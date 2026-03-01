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

  /// Creates a new [AppAutoBranchCreationConfig].
  /// [basicAuthCredentials] Basic authorization credentials for the autocreated branch.
  /// [buildSpec] Build specification (build spec) for the autocreated branch.
  /// [enableAutoBuild] Enables auto building for the autocreated branch.
  /// [enableBasicAuth] Enables basic authorization for the autocreated branch.
  /// [enablePerformanceMode] Enables performance mode for the branch.
  /// [enablePullRequestPreview] Enables pull request previews for the autocreated branch.
  /// [environmentVariables] Environment variables for the autocreated branch.
  /// [framework] Framework for the autocreated branch.
  /// [pullRequestEnvironmentName] Amplify environment name for the pull request.
  /// [stage] Describes the current stage for the autocreated branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
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
    return <String, dynamic>{
      'basicAuthCredentials': ?basicAuthCredentials,
      'buildSpec': ?buildSpec,
      'enableAutoBuild': ?enableAutoBuild,
      'enableBasicAuth': ?enableBasicAuth,
      'enablePerformanceMode': ?enablePerformanceMode,
      'enablePullRequestPreview': ?enablePullRequestPreview,
      'environmentVariables': ?environmentVariables,
      'framework': ?framework,
      'pullRequestEnvironmentName': ?pullRequestEnvironmentName,
      'stage': ?stage,
    };
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
