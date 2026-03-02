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
    required this.instanceId,
    this.name,
    this.parentGroupId,
    this.region,
    this.tags,
  });

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
      instanceId: (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      parentGroupId: map['parentGroupId'] == null ? null : ((map['parentGroupId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

