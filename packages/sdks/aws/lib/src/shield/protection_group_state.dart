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
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ProtectionGroupState].
  /// [aggregation] Defines how AWS Shield combines resource data for the group in order to detect, mitigate, and report events.
  /// [members] The Amazon Resource Names (ARNs) of the resources to include in the protection group. You must set this when you set `pattern` to ARBITRARY and you must not set it for any other `pattern` setting.
  /// [pattern] The criteria to use to choose the protected resources for inclusion in the group.
  /// [protectionGroupArn] The ARN (Amazon Resource Name) of the protection group.
  /// [protectionGroupId] The name of the protection group.
  /// [resourceType] The resource type to include in the protection group. You must set this when you set `pattern` to BY_RESOURCE_TYPE and you must not set it for any other `pattern` setting.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ProtectionGroupState({
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
      aggregation: map['aggregation'] == null ? null : (map['aggregation'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      pattern: map['pattern'] == null ? null : (map['pattern'] as String).input(),
      protectionGroupArn: map['protectionGroupArn'] == null ? null : (map['protectionGroupArn'] as String).input(),
      protectionGroupId: map['protectionGroupId'] == null ? null : (map['protectionGroupId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

