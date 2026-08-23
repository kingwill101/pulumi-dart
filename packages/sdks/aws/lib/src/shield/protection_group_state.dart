// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ProtectionGroup resources.
class ProtectionGroupState {
  /// Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  final pulumi.Input<String>? aggregation;
  /// The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `pattern` to ARBITRARY and you must not set it for any other `pattern` setting.
  final pulumi.Input<List<String>>? members;
  /// The criteria to use to choose the protected resources for inclusion in the group.
  final pulumi.Input<String>? pattern;
  /// The ARN (Amazon Resource Name) of the protection group.
  final pulumi.Input<String>? protectionGroupArn;
  /// The name of the protection group.
  final pulumi.Input<String>? protectionGroupId;
  /// The resource type to include in the protection group. You must set this when you set `pattern` to BY_RESOURCE_TYPE and you must not set it for any other `pattern` setting.
  final pulumi.Input<String>? resourceType;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProtectionGroupState].
  /// [aggregation] Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  /// [members] The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `pattern` to ARBITRARY and you must not set it for any other `pattern` setting.
  /// [pattern] The criteria to use to choose the protected resources for inclusion in the group.
  /// [protectionGroupArn] The ARN (Amazon Resource Name) of the protection group.
  /// [protectionGroupId] The name of the protection group.
  /// [resourceType] The resource type to include in the protection group. You must set this when you set `pattern` to BY_RESOURCE_TYPE and you must not set it for any other `pattern` setting.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const ProtectionGroupState({
    this.aggregation,
    this.members,
    this.pattern,
    this.protectionGroupArn,
    this.protectionGroupId,
    this.resourceType,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregation': ?aggregation,
      'members': ?members,
      'pattern': ?pattern,
      'protectionGroupArn': ?protectionGroupArn,
      'protectionGroupId': ?protectionGroupId,
      'resourceType': ?resourceType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ProtectionGroupState.fromMap(Map<String, dynamic> map) {
    return ProtectionGroupState(
      aggregation: (() { final guardedValue = map['aggregation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionGroupArn: (() { final guardedValue = map['protectionGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionGroupId: (() { final guardedValue = map['protectionGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
