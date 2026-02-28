// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a test case. Test case references are canonically ordered lexicographically by these three factors: * First, by test_suite_name. * Second, by class_name. * Third, by name.
class TestCaseReferenceResponse {
  /// The name of the class.
  final String className;

  /// The name of the test case. Required.
  final String name;

  /// The name of the test suite to which this test case belongs.
  final String testSuiteName;

  /// Creates a new [TestCaseReferenceResponse].
  /// [className] The name of the class.
  /// [name] The name of the test case. Required.
  /// [testSuiteName] The name of the test suite to which this test case belongs.
  TestCaseReferenceResponse({
    required this.className,
    required this.name,
    required this.testSuiteName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['className'] = className;
    map['name'] = name;
    map['testSuiteName'] = testSuiteName;
    return map;
  }

  factory TestCaseReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TestCaseReferenceResponse(
      className: map['className'] as String,
      name: map['name'] as String,
      testSuiteName: map['testSuiteName'] as String,
    );
  }
}
