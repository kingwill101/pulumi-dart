// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuleGroupNamespace resources.
class RuleGroupNamespaceState {
  /// The ARN of the rule group namespace.
  final pulumi.Input<String>? arn;
  /// the rule group namespace data that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-Ruler.html).
  final pulumi.Input<String>? data;
  /// The name of the rule group namespace.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// ID of the prometheus workspace the rule group namespace should be linked to.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [RuleGroupNamespaceState].
  /// [arn] The ARN of the rule group namespace.
  /// [data] the rule group namespace data that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-Ruler.html).
  /// [name] The name of the rule group namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [workspaceId] ID of the prometheus workspace the rule group namespace should be linked to.
  RuleGroupNamespaceState({
    this.arn,
    this.data,
    this.name,
    this.region,
    this.tags,
    this.tagsAll,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'data': ?data,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'workspaceId': ?workspaceId,
    };
  }

  factory RuleGroupNamespaceState.fromMap(Map<String, dynamic> map) {
    return RuleGroupNamespaceState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      data: map['data'] == null ? null : ((map['data'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      workspaceId: map['workspaceId'] == null ? null : ((map['workspaceId'] as String).input()).input(),
    );
  }
}

