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
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProtectionGroupArgs].
  /// [aggregation] Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  /// [members] The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `pattern` to ARBITRARY and you must not set it for any other `pattern` setting.
  /// [pattern] The criteria to use to choose the protected resources for inclusion in the group.
  /// [protectionGroupId] The name of the protection group.
  /// [resourceType] The resource type to include in the protection group. You must set this when you set `pattern` to BY_RESOURCE_TYPE and you must not set it for any other `pattern` setting.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const ProtectionGroupArgs({
    required this.aggregation,
    this.members,
    required this.pattern,
    required this.protectionGroupId,
    this.resourceType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': aggregation,
      'members': ?members,
      'pattern': pattern,
      'protectionGroupId': protectionGroupId,
      'resourceType': ?resourceType,
      'tags': ?tags,
    };
  }

  factory ProtectionGroupArgs.fromMap(Map<String, dynamic> map) {
    return ProtectionGroupArgs(
      aggregation: pulumi.Input.fromValue(map['aggregation'] as String),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pattern: pulumi.Input.fromValue(map['pattern'] as String),
      protectionGroupId: pulumi.Input.fromValue(map['protectionGroupId'] as String),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
