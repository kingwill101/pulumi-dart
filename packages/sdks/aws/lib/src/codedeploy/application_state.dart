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
    this.applicationId,
    this.arn,
    this.computePlatform,
    this.githubAccountName,
    this.linkedToGithub,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      applicationId: map['applicationId'] == null ? null : ((map['applicationId'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      computePlatform: map['computePlatform'] == null ? null : ((map['computePlatform'] as String).input()).input(),
      githubAccountName: map['githubAccountName'] == null ? null : ((map['githubAccountName'] as String).input()).input(),
      linkedToGithub: map['linkedToGithub'] == null ? null : ((map['linkedToGithub'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

