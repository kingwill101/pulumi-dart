// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for continuous tests.
class GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfigResponse {
  /// Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.
  final bool enableContinuousRun;
  /// Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.
  final bool enablePredeploymentRun;
  /// A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`
  final List<String> testCases;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfigResponse].
  /// [enableContinuousRun] Whether to run test cases in TestCasesConfig.test_cases periodically. Default false. If set to true, run once a day.
  /// [enablePredeploymentRun] Whether to run test cases in TestCasesConfig.test_cases before deploying a flow version to the environment. Default false.
  /// [testCases] A list of test case names to run. They should be under the same agent. Format of each test case name: `projects//locations/ /agents//testCases/`
  GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfigResponse({
    required this.enableContinuousRun,
    required this.enablePredeploymentRun,
    required this.testCases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableContinuousRun': enableContinuousRun,
      'enablePredeploymentRun': enablePredeploymentRun,
      'testCases': testCases,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EnvironmentTestCasesConfigResponse(
      enableContinuousRun: map['enableContinuousRun'] as bool,
      enablePredeploymentRun: map['enablePredeploymentRun'] as bool,
      testCases: (map['testCases'] as List).cast<String>(),
    );
  }
}

