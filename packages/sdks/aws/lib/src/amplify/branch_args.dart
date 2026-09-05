// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amplify_branch_branch_args_doc}
/// The set of arguments for Branch.
/// {@endtemplate}
/// {@macro pulumi_amplify_branch_branch_args_doc}
class BranchArgs {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String> appId;
  /// ARN for a backend environment that is part of an Amplify app.
  final pulumi.Input<String?>? backendEnvironmentArn;
  /// Basic authorization credentials for the branch.
  final pulumi.Input<String?>? basicAuthCredentials;
  /// Name for the branch.
  final pulumi.Input<String> branchName;
  /// Description for the branch.
  final pulumi.Input<String?>? description;
  /// Display name for a branch. This is used as the default domain prefix.
  final pulumi.Input<String?>? displayName;
  /// Enables auto building for the branch.
  final pulumi.Input<bool?>? enableAutoBuild;
  /// Enables basic authorization for the branch.
  final pulumi.Input<bool?>? enableBasicAuth;
  /// Enables notifications for the branch.
  final pulumi.Input<bool?>? enableNotification;
  /// Enables performance mode for the branch.
  final pulumi.Input<bool?>? enablePerformanceMode;
  /// Enables pull request previews for this branch.
  final pulumi.Input<bool?>? enablePullRequestPreview;
  /// Enables skew protection for the branch.
  final pulumi.Input<bool?>? enableSkewProtection;
  /// Environment variables for the branch.
  final pulumi.Input<Map<String, String>?>? environmentVariables;
  /// Framework for the branch.
  final pulumi.Input<String?>? framework;
  /// Amplify environment name for the pull request.
  final pulumi.Input<String?>? pullRequestEnvironmentName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  final pulumi.Input<String?>? stage;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Content Time To Live (TTL) for the website in seconds.
  final pulumi.Input<String?>? ttl;

  /// Creates a new [BranchArgs].
  /// [appId] Unique ID for an Amplify app.
  /// [backendEnvironmentArn] ARN for a backend environment that is part of an Amplify app.
  /// [basicAuthCredentials] Basic authorization credentials for the branch.
  /// [branchName] Name for the branch.
  /// [description] Description for the branch.
  /// [displayName] Display name for a branch. This is used as the default domain prefix.
  /// [enableAutoBuild] Enables auto building for the branch.
  /// [enableBasicAuth] Enables basic authorization for the branch.
  /// [enableNotification] Enables notifications for the branch.
  /// [enablePerformanceMode] Enables performance mode for the branch.
  /// [enablePullRequestPreview] Enables pull request previews for this branch.
  /// [enableSkewProtection] Enables skew protection for the branch.
  /// [environmentVariables] Environment variables for the branch.
  /// [framework] Framework for the branch.
  /// [pullRequestEnvironmentName] Amplify environment name for the pull request.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [stage] Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [ttl] Content Time To Live (TTL) for the website in seconds.
  const BranchArgs({
    required this.appId,
    this.backendEnvironmentArn,
    this.basicAuthCredentials,
    required this.branchName,
    this.description,
    this.displayName,
    this.enableAutoBuild,
    this.enableBasicAuth,
    this.enableNotification,
    this.enablePerformanceMode,
    this.enablePullRequestPreview,
    this.enableSkewProtection,
    this.environmentVariables,
    this.framework,
    this.pullRequestEnvironmentName,
    this.region,
    this.stage,
    this.tags,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'backendEnvironmentArn': ?backendEnvironmentArn,
      'basicAuthCredentials': ?basicAuthCredentials,
      'branchName': branchName,
      'description': ?description,
      'displayName': ?displayName,
      'enableAutoBuild': ?enableAutoBuild,
      'enableBasicAuth': ?enableBasicAuth,
      'enableNotification': ?enableNotification,
      'enablePerformanceMode': ?enablePerformanceMode,
      'enablePullRequestPreview': ?enablePullRequestPreview,
      'enableSkewProtection': ?enableSkewProtection,
      'environmentVariables': ?environmentVariables,
      'framework': ?framework,
      'pullRequestEnvironmentName': ?pullRequestEnvironmentName,
      'region': ?region,
      'stage': ?stage,
      'tags': ?tags,
      'ttl': ?ttl,
    };
  }

  factory BranchArgs.fromMap(Map<String, dynamic> map) {
    return BranchArgs(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      backendEnvironmentArn: (() { final guardedValue = map['backendEnvironmentArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      basicAuthCredentials: (() { final guardedValue = map['basicAuthCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      branchName: pulumi.Input.fromValue(map['branchName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAutoBuild: (() { final guardedValue = map['enableAutoBuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableBasicAuth: (() { final guardedValue = map['enableBasicAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNotification: (() { final guardedValue = map['enableNotification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePerformanceMode: (() { final guardedValue = map['enablePerformanceMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePullRequestPreview: (() { final guardedValue = map['enablePullRequestPreview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableSkewProtection: (() { final guardedValue = map['enableSkewProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      environmentVariables: (() { final guardedValue = map['environmentVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pullRequestEnvironmentName: (() { final guardedValue = map['pullRequestEnvironmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      ttl: (() { final guardedValue = map['ttl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
