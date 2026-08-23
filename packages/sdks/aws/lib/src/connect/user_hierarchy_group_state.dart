// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_group_hierarchy_path.dart';

/// Input properties used for looking up and filtering UserHierarchyGroup resources.
class UserHierarchyGroupState {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  final pulumi.Input<String>? arn;
  /// The identifier for the hierarchy group.
  final pulumi.Input<String>? hierarchyGroupId;
  /// A block that contains information about the levels in the hierarchy group. The `hierarchyPath` block is documented below.
  final pulumi.Input<List<UserHierarchyGroupHierarchyPath>>? hierarchyPaths;
  /// Specifies the identifier of the hosting Amazon Connect Instance.
  final pulumi.Input<String>? instanceId;
  /// The identifier of the level in the hierarchy group.
  final pulumi.Input<String>? levelId;
  /// The name of the user hierarchy group. Must not be more than 100 characters.
  final pulumi.Input<String>? name;
  /// The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  final pulumi.Input<String>? parentGroupId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the hierarchy group. If configured with a provider
  /// `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [UserHierarchyGroupState].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy group.
  /// [hierarchyGroupId] The identifier for the hierarchy group.
  /// [hierarchyPaths] A block that contains information about the levels in the hierarchy group. The `hierarchyPath` block is documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [levelId] The identifier of the level in the hierarchy group.
  /// [name] The name of the user hierarchy group. Must not be more than 100 characters.
  /// [parentGroupId] The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the hierarchy group. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const UserHierarchyGroupState({
    this.arn,
    this.hierarchyGroupId,
    this.hierarchyPaths,
    this.instanceId,
    this.levelId,
    this.name,
    this.parentGroupId,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hierarchyGroupId': ?hierarchyGroupId,
      'hierarchyPaths': ?pulumi.Input.mapOptionalInputValue<List<UserHierarchyGroupHierarchyPath>, List<Map<String, dynamic>>>(hierarchyPaths, (value) => pulumi.Input.encodeList<UserHierarchyGroupHierarchyPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': ?instanceId,
      'levelId': ?levelId,
      'name': ?name,
      'parentGroupId': ?parentGroupId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory UserHierarchyGroupState.fromMap(Map<String, dynamic> map) {
    return UserHierarchyGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hierarchyGroupId: (() { final guardedValue = map['hierarchyGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hierarchyPaths: (() { final guardedValue = map['hierarchyPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserHierarchyGroupHierarchyPath>(guardedValue, (value) => UserHierarchyGroupHierarchyPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      levelId: (() { final guardedValue = map['levelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentGroupId: (() { final guardedValue = map['parentGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
