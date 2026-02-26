// ignore_for_file: unused_element, unnecessary_cast

/// A test of an Android application that can control an Android component independently of its normal lifecycle. See for more information on types of Android tests.
class AndroidInstrumentationTestResponse2 {
  /// The java package for the test to be executed. Required
  final String testPackageId;

  /// The InstrumentationTestRunner class. Required
  final String testRunnerClass;

  /// Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  final List<String> testTargets;

  /// The flag indicates whether Android Test Orchestrator will be used to run test or not.
  final bool useOrchestrator;

  AndroidInstrumentationTestResponse2({
    required this.testPackageId,
    required this.testRunnerClass,
    required this.testTargets,
    required this.useOrchestrator,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['testPackageId'] = testPackageId;
    map['testRunnerClass'] = testRunnerClass;
    map['testTargets'] = testTargets;
    map['useOrchestrator'] = useOrchestrator;
    return map;
  }

  factory AndroidInstrumentationTestResponse2.fromMap(
      Map<String, dynamic> map) {
    return AndroidInstrumentationTestResponse2(
      testPackageId: map['testPackageId'] as String,
      testRunnerClass: map['testRunnerClass'] as String,
      testTargets: (map['testTargets'] as List).cast<String>(),
      useOrchestrator: map['useOrchestrator'] as bool,
    );
  }
}
