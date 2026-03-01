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
    required pulumi.Output<String> aggregation,
    pulumi.Output<List<String>>? members,
    required pulumi.Output<String> pattern,
    required pulumi.Output<String> protectionGroupId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aggregation = pulumi.Input.asInput<String>(aggregation),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      pattern = pulumi.Input.asInput<String>(pattern),
      protectionGroupId = pulumi.Input.asInput<String>(protectionGroupId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      aggregation: pulumi.Output.create<String>(map['aggregation'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      pattern: pulumi.Output.create<String>(map['pattern'] as String),
      protectionGroupId: pulumi.Output.create<String>(map['protectionGroupId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

