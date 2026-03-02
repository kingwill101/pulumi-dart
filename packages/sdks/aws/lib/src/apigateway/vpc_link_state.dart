// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcLink resources.
class VpcLinkState {
  final pulumi.Input<String>? arn;
  /// Description of the VPC link.
  final pulumi.Input<String>? description;
  /// Name used to label and identify the VPC link.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  final pulumi.Input<String>? targetArn;

  /// Creates a new [VpcLinkState].
  /// [arn] Optional.
  /// [description] Description of the VPC link.
  /// [name] Name used to label and identify the VPC link.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetArn] List of network load balancer arns in the VPC targeted by the VPC link. Currently AWS only supports 1 target.
  VpcLinkState({
    this.arn,
    this.description,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.targetArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetArn': ?targetArn,
    };
  }

  factory VpcLinkState.fromMap(Map<String, dynamic> map) {
    return VpcLinkState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetArn: map['targetArn'] == null ? null : (map['targetArn'] as String).input(),
    );
  }
}

