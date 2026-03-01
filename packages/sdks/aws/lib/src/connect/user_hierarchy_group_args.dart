// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connect_user_hierarchy_group_user_hierarchy_group_args_doc}
/// The set of arguments for UserHierarchyGroup.
/// {@endtemplate}
/// {@macro pulumi_connect_user_hierarchy_group_user_hierarchy_group_args_doc}
class UserHierarchyGroupArgs {
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String> instanceId;
  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final pulumi.Input<String>? name;
  /// The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  final pulumi.Input<String>? parentGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the hierarchy group. If configured with a provider
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [UserHierarchyGroupArgs].
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [name] The name of the user hierarchy group. Must not be more than 100 characters.
  /// [parentGroupId] The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the hierarchy group. If configured with a provider
  UserHierarchyGroupArgs({
    required pulumi.Output<String> instanceId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentGroupId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentGroupId = pulumi.Input.asOptionalInput<String>(parentGroupId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'name': ?name,
      'parentGroupId': ?parentGroupId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory UserHierarchyGroupArgs.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupArgs(
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentGroupId: map['parentGroupId'] == null ? null : pulumi.Output.create<String>(map['parentGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

