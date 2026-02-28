// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_group_hierarchy_path.dart';

/// Result data returned by getUserHierarchyGroup.
class GetUserHierarchyGroupResult {
  /// ARN of the hierarchy group.
  final String arn;
  final String hierarchyGroupId;

  /// Block that contains information about the levels in the hierarchy group. The `hierarchy_path` block is documented below.
  final List<GetUserHierarchyGroupHierarchyPath> hierarchyPaths;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;

  /// Identifier of the level in the hierarchy group.
  final String levelId;

  /// Name of the hierarchy group.
  final String name;
  final String region;

  /// Map of tags to assign to the hierarchy group.
  final Map<String, String> tags;

  /// Creates a new [GetUserHierarchyGroupResult].
  /// [arn] ARN of the hierarchy group.
  /// [hierarchyGroupId] Required.
  /// [hierarchyPaths] Block that contains information about the levels in the hierarchy group. The `hierarchy_path` block is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [levelId] Identifier of the level in the hierarchy group.
  /// [name] Name of the hierarchy group.
  /// [region] Required.
  /// [tags] Map of tags to assign to the hierarchy group.
  GetUserHierarchyGroupResult({
    required this.arn,
    required this.hierarchyGroupId,
    required this.hierarchyPaths,
    required this.id,
    required this.instanceId,
    required this.levelId,
    required this.name,
    required this.region,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['hierarchyGroupId'] = hierarchyGroupId;
    map['hierarchyPaths'] = pulumi.Input.encodeList<
        GetUserHierarchyGroupHierarchyPath,
        Map<String, dynamic>>(hierarchyPaths, (value) => value.toMap());
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['levelId'] = levelId;
    map['name'] = name;
    map['region'] = region;
    map['tags'] = tags;
    return map;
  }

  factory GetUserHierarchyGroupResult.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupResult(
      arn: map['arn'] as String,
      hierarchyGroupId: map['hierarchyGroupId'] as String,
      hierarchyPaths:
          pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPath>(
              map['hierarchyPaths'],
              (value) => GetUserHierarchyGroupHierarchyPath.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      levelId: map['levelId'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
