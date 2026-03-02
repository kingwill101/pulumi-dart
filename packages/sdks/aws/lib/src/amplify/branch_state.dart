// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Branch resources.
class BranchState {
  /// Unique ID for an Amplify app.
  final pulumi.Input<String>? appId;
  /// ARN for the branch.
  final pulumi.Input<String>? arn;
  /// A list of custom resources that are linked to this branch.
  final pulumi.Input<List<String>>? associatedResources;
  /// ARN for a backend environment that is part of an Amplify app.
  final pulumi.Input<String>? backendEnvironmentArn;
  /// Basic authorization credentials for the branch.
  final pulumi.Input<String>? basicAuthCredentials;
  /// Name for the branch.
  final pulumi.Input<String>? branchName;
  /// Custom domains for the branch.
  final pulumi.Input<List<String>>? customDomains;
  /// Description for the branch.
  final pulumi.Input<String>? description;
  /// Destination branch if the branch is a pull request branch.
  final pulumi.Input<String>? destinationBranch;
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
  /// Source branch if the branch is a pull request branch.
  final pulumi.Input<String>? sourceBranch;
  /// Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  final pulumi.Input<String>? stage;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Content Time To Live (TTL) for the website in seconds.
  final pulumi.Input<String>? ttl;

  /// Creates a new [BranchState].
  /// [appId] Unique ID for an Amplify app.
  /// [arn] ARN for the branch.
  /// [associatedResources] A list of custom resources that are linked to this branch.
  /// [backendEnvironmentArn] ARN for a backend environment that is part of an Amplify app.
  /// [basicAuthCredentials] Basic authorization credentials for the branch.
  /// [branchName] Name for the branch.
  /// [customDomains] Custom domains for the branch.
  /// [description] Description for the branch.
  /// [destinationBranch] Destination branch if the branch is a pull request branch.
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
  /// [sourceBranch] Source branch if the branch is a pull request branch.
  /// [stage] Describes the current stage for the branch. Valid values: `PRODUCTION`, `BETA`, `DEVELOPMENT`, `EXPERIMENTAL`, `PULL_REQUEST`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [ttl] Content Time To Live (TTL) for the website in seconds.
  BranchState({
    this.appId,
    this.arn,
    this.associatedResources,
    this.backendEnvironmentArn,
    this.basicAuthCredentials,
    this.branchName,
    this.customDomains,
    this.description,
    this.destinationBranch,
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
    this.sourceBranch,
    this.stage,
    this.tags,
    this.tagsAll,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'arn': ?arn,
      'associatedResources': ?associatedResources,
      'backendEnvironmentArn': ?backendEnvironmentArn,
      'basicAuthCredentials': ?basicAuthCredentials,
      'branchName': ?branchName,
      'customDomains': ?customDomains,
      'description': ?description,
      'destinationBranch': ?destinationBranch,
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
      'sourceBranch': ?sourceBranch,
      'stage': ?stage,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'ttl': ?ttl,
    };
  }

  factory BranchState.fromMap(Map<String, dynamic> map) {
    return BranchState(
      appId: map['appId'] == null ? null : (map['appId'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      associatedResources: map['associatedResources'] == null ? null : ((map['associatedResources'] as List).cast<String>()).input(),
      backendEnvironmentArn: map['backendEnvironmentArn'] == null ? null : (map['backendEnvironmentArn'] as String).input(),
      basicAuthCredentials: map['basicAuthCredentials'] == null ? null : (map['basicAuthCredentials'] as String).input(),
      branchName: map['branchName'] == null ? null : (map['branchName'] as String).input(),
      customDomains: map['customDomains'] == null ? null : ((map['customDomains'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationBranch: map['destinationBranch'] == null ? null : (map['destinationBranch'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      enableAutoBuild: map['enableAutoBuild'] == null ? null : (map['enableAutoBuild'] as bool).input(),
      enableBasicAuth: map['enableBasicAuth'] == null ? null : (map['enableBasicAuth'] as bool).input(),
      enableNotification: map['enableNotification'] == null ? null : (map['enableNotification'] as bool).input(),
      enablePerformanceMode: map['enablePerformanceMode'] == null ? null : (map['enablePerformanceMode'] as bool).input(),
      enablePullRequestPreview: map['enablePullRequestPreview'] == null ? null : (map['enablePullRequestPreview'] as bool).input(),
      enableSkewProtection: map['enableSkewProtection'] == null ? null : (map['enableSkewProtection'] as bool).input(),
      environmentVariables: map['environmentVariables'] == null ? null : ((map['environmentVariables'] as Map).cast<String, String>()).input(),
      framework: map['framework'] == null ? null : (map['framework'] as String).input(),
      pullRequestEnvironmentName: map['pullRequestEnvironmentName'] == null ? null : (map['pullRequestEnvironmentName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      sourceBranch: map['sourceBranch'] == null ? null : (map['sourceBranch'] as String).input(),
      stage: map['stage'] == null ? null : (map['stage'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as String).input(),
    );
  }
}

