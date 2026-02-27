// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ProtectionGroup.
class ProtectionGroupArgs {
  /// Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  final pulumi.Input<String> aggregation;

  /// The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `pattern` to ARBITRARY and you must not set it for any other `pattern` setting.
  final pulumi.Input<List<String>>? members;

  /// The criteria to use to choose the protected resources for inclusion in the group.
  final pulumi.Input<String> pattern;

  /// The name of the protection group.
  final pulumi.Input<String> protectionGroupId;

  /// The resource type to include in the protection group. You must set this when you set `pattern` to BY_RESOURCE_TYPE and you must not set it for any other `pattern` setting.
  final pulumi.Input<String>? resourceType;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ProtectionGroupArgs({
    required this.aggregation,
    this.members,
    required this.pattern,
    required this.protectionGroupId,
    this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregation'] = aggregation;
    final membersValue = members;
    if (membersValue != null) {
      map['members'] = membersValue;
    }
    map['pattern'] = pattern;
    map['protectionGroupId'] = protectionGroupId;
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ProtectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionGroupArgs(
      aggregation: pulumi.Input.asInput<String>(map['aggregation']),
      members: pulumi.Input.asOptionalInput<List<String>>(map['members']),
      pattern: pulumi.Input.asInput<String>(map['pattern']),
      protectionGroupId: pulumi.Input.asInput<String>(map['protectionGroupId']),
      resourceType: pulumi.Input.asOptionalInput<String>(map['resourceType']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
