// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAutoBranchCreationConfig {
  /// Basic authorization credentials for the autocreated branch.
  final pulumi.Input<String>? basicAuthCredentials;
  /// Build specification (build spec) for the autocreated branch.
  final pulumi.Input<String>? buildSpec;
  /// Enables auto building for the autocreated branch.
  final pulumi.Input<bool>? enableAutoBuild;
  /// Enables basic authorization for the autocreated branch.
  final pulumi.Input<bool>? enableBasicAuth;
  /// Enables performance mode for the branch.
  final pulumi.Input<bool>? enablePerformanceMode;
  /// Enables pull request previews for the autocreated branch.
  final pulumi.Input<bool>? enablePullRequestPreview;
  /// Environment variables for the autocreated branch.
  final pulumi.Input<Map<String, String>>? environmentVariables;
  /// Framework for the autocreated branch.
  final pulumi.Input<String>? framework;
  /// Amplify environment name for the pull request.
  final pulumi.Input<String>? pullRequestEnvironmentName;
  /// Describes the current stage for the autocreated branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  final pulumi.Input<String>? stage;

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
      basicAuthCredentials: map['basicAuthCredentials'] == null ? null : (map['basicAuthCredentials'] as String).input(),
      buildSpec: map['buildSpec'] == null ? null : (map['buildSpec'] as String).input(),
      enableAutoBuild: map['enableAutoBuild'] == null ? null : (map['enableAutoBuild'] as bool).input(),
      enableBasicAuth: map['enableBasicAuth'] == null ? null : (map['enableBasicAuth'] as bool).input(),
      enablePerformanceMode: map['enablePerformanceMode'] == null ? null : (map['enablePerformanceMode'] as bool).input(),
      enablePullRequestPreview: map['enablePullRequestPreview'] == null ? null : (map['enablePullRequestPreview'] as bool).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      framework: map['framework'] == null ? null : (map['framework'] as String).input(),
      pullRequestEnvironmentName: map['pullRequestEnvironmentName'] == null ? null : (map['pullRequestEnvironmentName'] as String).input(),
      stage: map['stage'] == null ? null : (map['stage'] as String).input(),
    );
  }
}

