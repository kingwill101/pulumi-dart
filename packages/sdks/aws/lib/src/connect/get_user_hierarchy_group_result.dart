// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_group_hierarchy_path.dart';

/// Result data returned by getUserHierarchyGroup.
class GetUserHierarchyGroupResult {
  /// ARN of the hierarchy group.
  final String? arn;
  final String? hierarchyGroupId;
  /// Block that contains information about the levels in the hierarchy group. The `hierarchyPath` block is documented below.
  final List<GetUserHierarchyGroupHierarchyPath>? hierarchyPaths;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  /// Identifier of the level in the hierarchy group.
  final String? levelId;
  /// Name of the hierarchy group.
  final String? name;
  final String? region;
  /// Map of tags to assign to the hierarchy group.
  final Map<String, String>? tags;

  /// Creates a new [GetUserHierarchyGroupResult].
  /// [arn] ARN of the hierarchy group.
  /// [hierarchyGroupId] Optional.
  /// [hierarchyPaths] Block that contains information about the levels in the hierarchy group. The `hierarchyPath` block is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [levelId] Identifier of the level in the hierarchy group.
  /// [name] Name of the hierarchy group.
  /// [region] Optional.
  /// [tags] Map of tags to assign to the hierarchy group.
  const GetUserHierarchyGroupResult({
    this.arn,
    this.hierarchyGroupId,
    this.hierarchyPaths,
    this.id,
    this.instanceId,
    this.levelId,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hierarchyGroupId': ?hierarchyGroupId,
      'hierarchyPaths': ?(() { final guardedValue = hierarchyPaths; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserHierarchyGroupHierarchyPath, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceId': ?instanceId,
      'levelId': ?levelId,
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetUserHierarchyGroupResult.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hierarchyGroupId: (() { final guardedValue = map['hierarchyGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hierarchyPaths: (() { final guardedValue = map['hierarchyPaths']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserHierarchyGroupHierarchyPath>(guardedValue, (value) => GetUserHierarchyGroupHierarchyPath.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      levelId: (() { final guardedValue = map['levelId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
