// ignore_for_file: unused_element, unnecessary_cast


/// A reference to a test case. Test case references are canonically ordered lexicographically by these three factors: * First, by test_suite_name. * Second, by class_name. * Third, by name.
class TestCaseReference {
  /// The name of the class.
  final String? className;
  /// The name of the test case. Required.
  final String? name;
  /// The name of the test suite to which this test case belongs.
  final String? testSuiteName;

  /// Creates a new [TestCaseReference].
  /// [className] The name of the class.
  /// [name] The name of the test case. Required.
  /// [testSuiteName] The name of the test suite to which this test case belongs.
  TestCaseReference({
    this.className,
    this.name,
    this.testSuiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': ?className,
      'name': ?name,
      'testSuiteName': ?testSuiteName,
    };
  }

  factory TestCaseReference.fromMap(Map<String, dynamic> map) {
    return TestCaseReference(
      className: map['className'] == null ? null : map['className'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      testSuiteName: map['testSuiteName'] == null ? null : map['testSuiteName'] as String,
    );
  }
}

