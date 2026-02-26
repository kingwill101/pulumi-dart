// ignore_for_file: unused_element, unnecessary_cast

class AppAutoBranchCreationConfig {
  /// Basic authorization credentials for the autocreated branch.
  final String? basicAuthCredentials;

  /// Build specification (build spec) for the autocreated branch.
  final String? buildSpec;

  /// Enables auto building for the autocreated branch.
  final bool? enableAutoBuild;

  /// Enables basic authorization for the autocreated branch.
  final bool? enableBasicAuth;

  /// Enables performance mode for the branch.
  final bool? enablePerformanceMode;

  /// Enables pull request previews for the autocreated branch.
  final bool? enablePullRequestPreview;

  /// Environment variables for the autocreated branch.
  final Map<String, String>? environmentVariables;

  /// Framework for the autocreated branch.
  final String? framework;

  /// Amplify environment name for the pull request.
  final String? pullRequestEnvironmentName;

  /// Describes the current stage for the autocreated branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  final String? stage;

  AppAutoBranchCreationConfig({
    this.basicAuthCredentials,
    this.buildSpec,
    this.enableAutoBuild,
    this.enableBasicAuth,
    this.enablePerformanceMode,
    this.enablePullRequestPreview,
    this.environmentVariables,
    this.framework,
    this.pullRequestEnvironmentName,
    this.stage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final basicAuthCredentialsValue = basicAuthCredentials;
    if (basicAuthCredentialsValue != null) {
      map['basicAuthCredentials'] = basicAuthCredentialsValue;
    }
    final buildSpecValue = buildSpec;
    if (buildSpecValue != null) {
      map['buildSpec'] = buildSpecValue;
    }
    final enableAutoBuildValue = enableAutoBuild;
    if (enableAutoBuildValue != null) {
      map['enableAutoBuild'] = enableAutoBuildValue;
    }
    final enableBasicAuthValue = enableBasicAuth;
    if (enableBasicAuthValue != null) {
      map['enableBasicAuth'] = enableBasicAuthValue;
    }
    final enablePerformanceModeValue = enablePerformanceMode;
    if (enablePerformanceModeValue != null) {
      map['enablePerformanceMode'] = enablePerformanceModeValue;
    }
    final enablePullRequestPreviewValue = enablePullRequestPreview;
    if (enablePullRequestPreviewValue != null) {
      map['enablePullRequestPreview'] = enablePullRequestPreviewValue;
    }
    final environmentVariablesValue = environmentVariables;
    if (environmentVariablesValue != null) {
      map['environmentVariables'] = environmentVariablesValue;
    }
    final frameworkValue = framework;
    if (frameworkValue != null) {
      map['framework'] = frameworkValue;
    }
    final pullRequestEnvironmentNameValue = pullRequestEnvironmentName;
    if (pullRequestEnvironmentNameValue != null) {
      map['pullRequestEnvironmentName'] = pullRequestEnvironmentNameValue;
    }
    final stageValue = stage;
    if (stageValue != null) {
      map['stage'] = stageValue;
    }
    return map;
  }

  factory AppAutoBranchCreationConfig.fromMap(Map<String, dynamic> map) {
    return AppAutoBranchCreationConfig(
      basicAuthCredentials: map['basicAuthCredentials'] == null
          ? null
          : map['basicAuthCredentials'] as String,
      buildSpec: map['buildSpec'] == null ? null : map['buildSpec'] as String,
      enableAutoBuild: map['enableAutoBuild'] == null
          ? null
          : map['enableAutoBuild'] as bool,
      enableBasicAuth: map['enableBasicAuth'] == null
          ? null
          : map['enableBasicAuth'] as bool,
      enablePerformanceMode: map['enablePerformanceMode'] == null
          ? null
          : map['enablePerformanceMode'] as bool,
      enablePullRequestPreview: map['enablePullRequestPreview'] == null
          ? null
          : map['enablePullRequestPreview'] as bool,
      environmentVariables: map['environmentVariables'] == null
          ? null
          : (map['environmentVariables'] as Map).cast<String, String>(),
      framework: map['framework'] == null ? null : map['framework'] as String,
      pullRequestEnvironmentName: map['pullRequestEnvironmentName'] == null
          ? null
          : map['pullRequestEnvironmentName'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
    );
  }
}
