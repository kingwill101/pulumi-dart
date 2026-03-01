// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_get_user_hierarchy_group_get_user_hierarchy_group_args_doc}
/// Arguments for getUserHierarchyGroup.
/// {@endtemplate}
/// {@macro pulumi_connect_get_user_hierarchy_group_get_user_hierarchy_group_args_doc}
class GetUserHierarchyGroupArgs {
  /// Returns information on a specific hierarchy group by hierarchy group id
  final pulumi.Input<String>? hierarchyGroupId;
  /// Reference to the hosting Amazon Connect Instance
  final pulumi.Input<String> instanceId;
  /// Returns information on a specific hierarchy group by name
  ///
  /// > **NOTE:** `instance_id` and one of either `name` or `hierarchy_group_id` is required.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the hierarchy group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetUserHierarchyGroupArgs].
  /// [hierarchyGroupId] Returns information on a specific hierarchy group by hierarchy group id
  /// [instanceId] Reference to the hosting Amazon Connect Instance
  /// [name] Returns information on a specific hierarchy group by name
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the hierarchy group.
  GetUserHierarchyGroupArgs({
    pulumi.Output<String>? hierarchyGroupId,
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      hierarchyGroupId = pulumi.Input.asOptionalInput<String>(hierarchyGroupId),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyGroupId': ?hierarchyGroupId,
      'instanceId': instanceId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetUserHierarchyGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupArgs(
      hierarchyGroupId: map['hierarchyGroupId'] == null ? null : pulumi.Output.create<String>(map['hierarchyGroupId'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

