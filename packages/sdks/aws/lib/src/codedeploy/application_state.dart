// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// The application ID.
  final pulumi.Input<String>? applicationId;
  /// The ARN of the CodeDeploy application.
  final pulumi.Input<String>? arn;
  /// The compute platform can either be `ECS`, `Lambda`, or `Server`. Default is `Server`.
  final pulumi.Input<String>? computePlatform;
  /// The name for a connection to a GitHub account.
  final pulumi.Input<String>? githubAccountName;
  /// Whether the user has authenticated with GitHub for the specified application.
  final pulumi.Input<bool>? linkedToGithub;
  /// The name of the application.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ApplicationState].
  /// [applicationId] The application ID.
  /// [arn] The ARN of the CodeDeploy application.
  /// [computePlatform] The compute platform can either be `ECS`, `Lambda`, or `Server`. Default is `Server`.
  /// [githubAccountName] The name for a connection to a GitHub account.
  /// [linkedToGithub] Whether the user has authenticated with GitHub for the specified application.
  /// [name] The name of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ApplicationState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? computePlatform,
    pulumi.Output<String>? githubAccountName,
    pulumi.Output<bool>? linkedToGithub,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      computePlatform = pulumi.Input.asOptionalInput<String>(computePlatform),
      githubAccountName = pulumi.Input.asOptionalInput<String>(githubAccountName),
      linkedToGithub = pulumi.Input.asOptionalInput<bool>(linkedToGithub),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'computePlatform': ?computePlatform,
      'githubAccountName': ?githubAccountName,
      'linkedToGithub': ?linkedToGithub,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      computePlatform: map['computePlatform'] == null ? null : pulumi.Output.create<String>(map['computePlatform'] as String),
      githubAccountName: map['githubAccountName'] == null ? null : pulumi.Output.create<String>(map['githubAccountName'] as String),
      linkedToGithub: map['linkedToGithub'] == null ? null : pulumi.Output.create<bool>(map['linkedToGithub'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

