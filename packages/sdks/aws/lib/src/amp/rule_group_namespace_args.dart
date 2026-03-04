// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_amp_rule_group_namespace_rule_group_namespace_args_doc}
/// The set of arguments for RuleGroupNamespace.
/// {@endtemplate}
/// {@macro pulumi_amp_rule_group_namespace_rule_group_namespace_args_doc}
class RuleGroupNamespaceArgs {
  /// the rule group namespace data that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-Ruler.html).
  final pulumi.Input<String> data;

  /// The name of the rule group namespace.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// ID of the prometheus workspace the rule group namespace should be linked to.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [RuleGroupNamespaceArgs].
  /// [data] the rule group namespace data that you want to be applied. See more [in AWS Docs](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-Ruler.html).
  /// [name] The name of the rule group namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [workspaceId] ID of the prometheus workspace the rule group namespace should be linked to.
  RuleGroupNamespaceArgs({
    required this.data,
    this.name,
    this.region,
    this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory RuleGroupNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupNamespaceArgs(
      data: pulumi.Input.fromValue(map['data'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
