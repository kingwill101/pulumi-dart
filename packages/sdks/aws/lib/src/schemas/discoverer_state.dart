// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Discoverer resources.
class DiscovererState {
  /// The Amazon Resource Name (ARN) of the discoverer.
  final pulumi.Input<String>? arn;
  /// The description of the discoverer. Maximum of 256 characters.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of the event bus to discover event schemas on.
  final pulumi.Input<String>? sourceArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DiscovererState].
  /// [arn] The Amazon Resource Name (ARN) of the discoverer.
  /// [description] The description of the discoverer. Maximum of 256 characters.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceArn] The ARN of the event bus to discover event schemas on.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DiscovererState({
    this.arn,
    this.description,
    this.region,
    this.sourceArn,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'region': ?region,
      'sourceArn': ?sourceArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DiscovererState.fromMap(Map<String, dynamic> map) {
    return DiscovererState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      sourceArn: map['sourceArn'] == null ? null : ((map['sourceArn'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

