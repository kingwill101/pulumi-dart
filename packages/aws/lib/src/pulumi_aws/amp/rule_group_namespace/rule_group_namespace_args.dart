// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RuleGroupNamespace.
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

  RuleGroupNamespaceArgs({
    required this.data,
    this.name,
    this.region,
    this.tags,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['workspaceId'] = workspaceId;
    return map;
  }

  factory RuleGroupNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return RuleGroupNamespaceArgs(
      data: pulumi.Input.asInput<String>(map['data']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      workspaceId: pulumi.Input.asInput<String>(map['workspaceId']),
    );
  }
}
