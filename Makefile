format:
	python3 -m black .

test: format
	python3 tests/main.py

sdist: clean test
	python3 setup.py sdist

publish: sdist
	twine upload --repository pypi dist/*

clean:
	rm -rf build/ dist/ *.egg-info/
