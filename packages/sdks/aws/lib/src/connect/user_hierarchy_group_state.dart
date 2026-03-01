// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_hierarchy_group_hierarchy_path.dart';

/// Input properties used for looking up and filtering UserHierarchyGroup resources.
class UserHierarchyGroupState {
  /// The Amazon Resource Name (ARN) of the hierarchy group.
  final pulumi.Input<String>? arn;
  /// The identifier for the hierarchy group.
  final pulumi.Input<String>? hierarchyGroupId;
  /// A block that contains information about the levels in the hierarchy group. The `hierarchy_path` block is documented below.
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
  /// `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [UserHierarchyGroupState].
  /// [arn] The Amazon Resource Name (ARN) of the hierarchy group.
  /// [hierarchyGroupId] The identifier for the hierarchy group.
  /// [hierarchyPaths] A block that contains information about the levels in the hierarchy group. The `hierarchy_path` block is documented below.
  /// [instanceId] Specifies the identifier of the hosting Amazon Connect Instance.
  /// [levelId] The identifier of the level in the hierarchy group.
  /// [name] The name of the user hierarchy group. Must not be more than 100 characters.
  /// [parentGroupId] The identifier for the parent hierarchy group. The user hierarchy is created at level one if the parent group ID is null.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the hierarchy group. If configured with a provider
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  UserHierarchyGroupState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? hierarchyGroupId,
    pulumi.Output<List<UserHierarchyGroupHierarchyPath>>? hierarchyPaths,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? levelId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parentGroupId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      hierarchyGroupId = pulumi.Input.asOptionalInput<String>(hierarchyGroupId),
      hierarchyPaths = pulumi.Input.asOptionalInput<List<UserHierarchyGroupHierarchyPath>>(hierarchyPaths),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      levelId = pulumi.Input.asOptionalInput<String>(levelId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parentGroupId = pulumi.Input.asOptionalInput<String>(parentGroupId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      hierarchyGroupId: map['hierarchyGroupId'] == null ? null : pulumi.Output.create<String>(map['hierarchyGroupId'] as String),
      hierarchyPaths: map['hierarchyPaths'] == null ? null : pulumi.Output.create<List<UserHierarchyGroupHierarchyPath>>(pulumi.Input.decodeList<UserHierarchyGroupHierarchyPath>(map['hierarchyPaths'], (value) => UserHierarchyGroupHierarchyPath.fromMap((value as Map).cast<String, dynamic>()))),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      levelId: map['levelId'] == null ? null : pulumi.Output.create<String>(map['levelId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parentGroupId: map['parentGroupId'] == null ? null : pulumi.Output.create<String>(map['parentGroupId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

