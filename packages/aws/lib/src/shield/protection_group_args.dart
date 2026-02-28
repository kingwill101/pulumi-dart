// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_shield_protection_group_protection_group_args_doc}
/// The set of arguments for ProtectionGroup.
/// {@endtemplate}
/// {@macro pulumi_shield_protection_group_protection_group_args_doc}
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

  /// Creates a new [ProtectionGroupArgs].
  /// [aggregation] Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  /// [members] The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `pattern` to ARBITRARY and you must not set it for any other `pattern` setting.
  /// [pattern] The criteria to use to choose the protected resources for inclusion in the group.
  /// [protectionGroupId] The name of the protection group.
  /// [resourceType] The resource type to include in the protection group. You must set this when you set `pattern` to BY_RESOURCE_TYPE and you must not set it for any other `pattern` setting.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ProtectionGroupArgs({
    required String aggregation,
    List<String>? members,
    required String pattern,
    required String protectionGroupId,
    String? resourceType,
    Map<String, String>? tags,
  })  : aggregation = pulumi.Input.asInput<String>(aggregation),
        members = pulumi.Input.asOptionalInput<List<String>>(members),
        pattern = pulumi.Input.asInput<String>(pattern),
        protectionGroupId = pulumi.Input.asInput<String>(protectionGroupId),
        resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      aggregation: map['aggregation'] as String,
      members: map['members'] == null
          ? null
          : (map['members'] as List).cast<String>(),
      pattern: map['pattern'] as String,
      protectionGroupId: map['protectionGroupId'] as String,
      resourceType:
          map['resourceType'] == null ? null : map['resourceType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
