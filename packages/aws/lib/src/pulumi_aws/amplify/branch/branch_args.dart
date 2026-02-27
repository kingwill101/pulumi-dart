// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Branch.
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

  BranchArgs({
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
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final backendEnvironmentArnValue = backendEnvironmentArn;
    if (backendEnvironmentArnValue != null) {
      map['backendEnvironmentArn'] = backendEnvironmentArnValue;
    }
    final basicAuthCredentialsValue = basicAuthCredentials;
    if (basicAuthCredentialsValue != null) {
      map['basicAuthCredentials'] = basicAuthCredentialsValue;
    }
    map['branchName'] = branchName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enableAutoBuildValue = enableAutoBuild;
    if (enableAutoBuildValue != null) {
      map['enableAutoBuild'] = enableAutoBuildValue;
    }
    final enableBasicAuthValue = enableBasicAuth;
    if (enableBasicAuthValue != null) {
      map['enableBasicAuth'] = enableBasicAuthValue;
    }
    final enableNotificationValue = enableNotification;
    if (enableNotificationValue != null) {
      map['enableNotification'] = enableNotificationValue;
    }
    final enablePerformanceModeValue = enablePerformanceMode;
    if (enablePerformanceModeValue != null) {
      map['enablePerformanceMode'] = enablePerformanceModeValue;
    }
    final enablePullRequestPreviewValue = enablePullRequestPreview;
    if (enablePullRequestPreviewValue != null) {
      map['enablePullRequestPreview'] = enablePullRequestPreviewValue;
    }
    final enableSkewProtectionValue = enableSkewProtection;
    if (enableSkewProtectionValue != null) {
      map['enableSkewProtection'] = enableSkewProtectionValue;
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final stageValue = stage;
    if (stageValue != null) {
      map['stage'] = stageValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory BranchArgs.fromMap(Map<String, dynamic> map) {
    return BranchArgs(
      appId: pulumi.Input.asInput<String>(map['appId']),
      backendEnvironmentArn:
          pulumi.Input.asOptionalInput<String>(map['backendEnvironmentArn']),
      basicAuthCredentials:
          pulumi.Input.asOptionalInput<String>(map['basicAuthCredentials']),
      branchName: pulumi.Input.asInput<String>(map['branchName']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      enableAutoBuild:
          pulumi.Input.asOptionalInput<bool>(map['enableAutoBuild']),
      enableBasicAuth:
          pulumi.Input.asOptionalInput<bool>(map['enableBasicAuth']),
      enableNotification:
          pulumi.Input.asOptionalInput<bool>(map['enableNotification']),
      enablePerformanceMode:
          pulumi.Input.asOptionalInput<bool>(map['enablePerformanceMode']),
      enablePullRequestPreview:
          pulumi.Input.asOptionalInput<bool>(map['enablePullRequestPreview']),
      enableSkewProtection:
          pulumi.Input.asOptionalInput<bool>(map['enableSkewProtection']),
      environmentVariables: pulumi.Input.asOptionalInput<Map<String, String>>(
          map['environmentVariables']),
      framework: pulumi.Input.asOptionalInput<String>(map['framework']),
      pullRequestEnvironmentName: pulumi.Input.asOptionalInput<String>(
          map['pullRequestEnvironmentName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      stage: pulumi.Input.asOptionalInput<String>(map['stage']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      ttl: pulumi.Input.asOptionalInput<String>(map['ttl']),
    );
  }
}
