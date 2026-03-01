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
  final pulumi.Input<String>? backendEnvironmentArn;

  /// Basic authorization credentials for the branch.
  final pulumi.Input<String>? basicAuthCredentials;

  /// Name for the branch.
  final pulumi.Input<String> branchName;

  /// Description for the branch.
  final pulumi.Input<String>? description;

  /// Display name for a branch. This is used as the default domain prefix.
  final pulumi.Input<String>? displayName;

  /// Enables auto building for the branch.
  final pulumi.Input<bool>? enableAutoBuild;

  /// Enables basic authorization for the branch.
  final pulumi.Input<bool>? enableBasicAuth;

  /// Enables notifications for the branch.
  final pulumi.Input<bool>? enableNotification;

  /// Enables performance mode for the branch.
  final pulumi.Input<bool>? enablePerformanceMode;

  /// Enables pull request previews for this branch.
  final pulumi.Input<bool>? enablePullRequestPreview;

  /// Enables skew protection for the branch.
  final pulumi.Input<bool>? enableSkewProtection;

  /// Environment variables for the branch.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// Framework for the branch.
  final pulumi.Input<String>? framework;

  /// Amplify environment name for the pull request.
  final pulumi.Input<String>? pullRequestEnvironmentName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  final pulumi.Input<String>? stage;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Content Time To Live (TTL) for the website in seconds.
  final pulumi.Input<String>? ttl;

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
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [ttl] Content Time To Live (TTL) for the website in seconds.
  BranchArgs({
    required String appId,
    String? backendEnvironmentArn,
    String? basicAuthCredentials,
    required String branchName,
    String? description,
    String? displayName,
    bool? enableAutoBuild,
    bool? enableBasicAuth,
    bool? enableNotification,
    bool? enablePerformanceMode,
    bool? enablePullRequestPreview,
    bool? enableSkewProtection,
    Map<String, String>? environmentVariables,
    String? framework,
    String? pullRequestEnvironmentName,
    String? region,
    String? stage,
    Map<String, String>? tags,
    String? ttl,
  }) : appId = pulumi.Input.asInput<String>(appId),
       backendEnvironmentArn = pulumi.Input.asOptionalInput<String>(
         backendEnvironmentArn,
       ),
       basicAuthCredentials = pulumi.Input.asOptionalInput<String>(
         basicAuthCredentials,
       ),
       branchName = pulumi.Input.asInput<String>(branchName),
       description = pulumi.Input.asOptionalInput<String>(description),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       enableAutoBuild = pulumi.Input.asOptionalInput<bool>(enableAutoBuild),
       enableBasicAuth = pulumi.Input.asOptionalInput<bool>(enableBasicAuth),
       enableNotification = pulumi.Input.asOptionalInput<bool>(
         enableNotification,
       ),
       enablePerformanceMode = pulumi.Input.asOptionalInput<bool>(
         enablePerformanceMode,
       ),
       enablePullRequestPreview = pulumi.Input.asOptionalInput<bool>(
         enablePullRequestPreview,
       ),
       enableSkewProtection = pulumi.Input.asOptionalInput<bool>(
         enableSkewProtection,
       ),
       environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(
         environmentVariables,
       ),
       framework = pulumi.Input.asOptionalInput<String>(framework),
       pullRequestEnvironmentName = pulumi.Input.asOptionalInput<String>(
         pullRequestEnvironmentName,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       stage = pulumi.Input.asOptionalInput<String>(stage),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       ttl = pulumi.Input.asOptionalInput<String>(ttl);

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
      appId: map['appId'] as String,
      backendEnvironmentArn: map['backendEnvironmentArn'] == null
          ? null
          : map['backendEnvironmentArn'] as String,
      basicAuthCredentials: map['basicAuthCredentials'] == null
          ? null
          : map['basicAuthCredentials'] as String,
      branchName: map['branchName'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      enableAutoBuild: map['enableAutoBuild'] == null
          ? null
          : map['enableAutoBuild'] as bool,
      enableBasicAuth: map['enableBasicAuth'] == null
          ? null
          : map['enableBasicAuth'] as bool,
      enableNotification: map['enableNotification'] == null
          ? null
          : map['enableNotification'] as bool,
      enablePerformanceMode: map['enablePerformanceMode'] == null
          ? null
          : map['enablePerformanceMode'] as bool,
      enablePullRequestPreview: map['enablePullRequestPreview'] == null
          ? null
          : map['enablePullRequestPreview'] as bool,
      enableSkewProtection: map['enableSkewProtection'] == null
          ? null
          : map['enableSkewProtection'] as bool,
      environmentVariables: map['environmentVariables'] == null
          ? null
          : (map['environmentVariables'] as Map).cast<String, String>(),
      framework: map['framework'] == null ? null : map['framework'] as String,
      pullRequestEnvironmentName: map['pullRequestEnvironmentName'] == null
          ? null
          : map['pullRequestEnvironmentName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
    );
  }
}
