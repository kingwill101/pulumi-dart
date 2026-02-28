// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for continuous tests.
class GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig {
  /// Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.
  final bool? enableContinuousRun;

  /// Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.
  final bool? enablePredeploymentRun;

  /// A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`
  final List<String>? testCases;

  /// Creates a new [GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig].
  /// [enableContinuousRun] Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.
  /// [enablePredeploymentRun] Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.
  /// [testCases] A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`
  GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig({
    this.enableContinuousRun,
    this.enablePredeploymentRun,
    this.testCases,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableContinuousRunValue = enableContinuousRun;
    if (enableContinuousRunValue != null) {
      map['enableContinuousRun'] = enableContinuousRunValue;
    }
    final enablePredeploymentRunValue = enablePredeploymentRun;
    if (enablePredeploymentRunValue != null) {
      map['enablePredeploymentRun'] = enablePredeploymentRunValue;
    }
    final testCasesValue = testCases;
    if (testCasesValue != null) {
      map['testCases'] = testCasesValue;
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig(
      enableContinuousRun: map['enableContinuousRun'] == null
          ? null
          : map['enableContinuousRun'] as bool,
      enablePredeploymentRun: map['enablePredeploymentRun'] == null
          ? null
          : map['enablePredeploymentRun'] as bool,
      testCases: map['testCases'] == null
          ? null
          : (map['testCases'] as List).cast<String>(),
    );
  }
}
