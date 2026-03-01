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
    pulumi.Output<String>? appId,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? associatedResources,
    pulumi.Output<String>? backendEnvironmentArn,
    pulumi.Output<String>? basicAuthCredentials,
    pulumi.Output<String>? branchName,
    pulumi.Output<List<String>>? customDomains,
    pulumi.Output<String>? description,
    pulumi.Output<String>? destinationBranch,
    pulumi.Output<String>? displayName,
    pulumi.Output<bool>? enableAutoBuild,
    pulumi.Output<bool>? enableBasicAuth,
    pulumi.Output<bool>? enableNotification,
    pulumi.Output<bool>? enablePerformanceMode,
    pulumi.Output<bool>? enablePullRequestPreview,
    pulumi.Output<bool>? enableSkewProtection,
    pulumi.Output<Map<String, String>>? environmentVariables,
    pulumi.Output<String>? framework,
    pulumi.Output<String>? pullRequestEnvironmentName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? sourceBranch,
    pulumi.Output<String>? stage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? ttl,
  }) :
      appId = pulumi.Input.asOptionalInput<String>(appId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      associatedResources = pulumi.Input.asOptionalInput<List<String>>(associatedResources),
      backendEnvironmentArn = pulumi.Input.asOptionalInput<String>(backendEnvironmentArn),
      basicAuthCredentials = pulumi.Input.asOptionalInput<String>(basicAuthCredentials),
      branchName = pulumi.Input.asOptionalInput<String>(branchName),
      customDomains = pulumi.Input.asOptionalInput<List<String>>(customDomains),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationBranch = pulumi.Input.asOptionalInput<String>(destinationBranch),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      enableAutoBuild = pulumi.Input.asOptionalInput<bool>(enableAutoBuild),
      enableBasicAuth = pulumi.Input.asOptionalInput<bool>(enableBasicAuth),
      enableNotification = pulumi.Input.asOptionalInput<bool>(enableNotification),
      enablePerformanceMode = pulumi.Input.asOptionalInput<bool>(enablePerformanceMode),
      enablePullRequestPreview = pulumi.Input.asOptionalInput<bool>(enablePullRequestPreview),
      enableSkewProtection = pulumi.Input.asOptionalInput<bool>(enableSkewProtection),
      environmentVariables = pulumi.Input.asOptionalInput<Map<String, String>>(environmentVariables),
      framework = pulumi.Input.asOptionalInput<String>(framework),
      pullRequestEnvironmentName = pulumi.Input.asOptionalInput<String>(pullRequestEnvironmentName),
      region = pulumi.Input.asOptionalInput<String>(region),
      sourceBranch = pulumi.Input.asOptionalInput<String>(sourceBranch),
      stage = pulumi.Input.asOptionalInput<String>(stage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      ttl = pulumi.Input.asOptionalInput<String>(ttl);

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
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      associatedResources: map['associatedResources'] == null ? null : pulumi.Output.create<List<String>>((map['associatedResources'] as List).cast<String>()),
      backendEnvironmentArn: map['backendEnvironmentArn'] == null ? null : pulumi.Output.create<String>(map['backendEnvironmentArn'] as String),
      basicAuthCredentials: map['basicAuthCredentials'] == null ? null : pulumi.Output.create<String>(map['basicAuthCredentials'] as String),
      branchName: map['branchName'] == null ? null : pulumi.Output.create<String>(map['branchName'] as String),
      customDomains: map['customDomains'] == null ? null : pulumi.Output.create<List<String>>((map['customDomains'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationBranch: map['destinationBranch'] == null ? null : pulumi.Output.create<String>(map['destinationBranch'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      enableAutoBuild: map['enableAutoBuild'] == null ? null : pulumi.Output.create<bool>(map['enableAutoBuild'] as bool),
      enableBasicAuth: map['enableBasicAuth'] == null ? null : pulumi.Output.create<bool>(map['enableBasicAuth'] as bool),
      enableNotification: map['enableNotification'] == null ? null : pulumi.Output.create<bool>(map['enableNotification'] as bool),
      enablePerformanceMode: map['enablePerformanceMode'] == null ? null : pulumi.Output.create<bool>(map['enablePerformanceMode'] as bool),
      enablePullRequestPreview: map['enablePullRequestPreview'] == null ? null : pulumi.Output.create<bool>(map['enablePullRequestPreview'] as bool),
      enableSkewProtection: map['enableSkewProtection'] == null ? null : pulumi.Output.create<bool>(map['enableSkewProtection'] as bool),
      environmentVariables: map['environmentVariables'] == null ? null : pulumi.Output.create<Map<String, String>>((map['environmentVariables'] as Map).cast<String, String>()),
      framework: map['framework'] == null ? null : pulumi.Output.create<String>(map['framework'] as String),
      pullRequestEnvironmentName: map['pullRequestEnvironmentName'] == null ? null : pulumi.Output.create<String>(map['pullRequestEnvironmentName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sourceBranch: map['sourceBranch'] == null ? null : pulumi.Output.create<String>(map['sourceBranch'] as String),
      stage: map['stage'] == null ? null : pulumi.Output.create<String>(map['stage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<String>(map['ttl'] as String),
    );
  }
}

