// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_user_hierarchy_structure_hierarchy_structure/get_user_hierarchy_structure_hierarchy_structure.dart';

/// Result data returned by getUserHierarchyStructure.
class GetUserHierarchyStructureResult {
  /// Block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  final List<GetUserHierarchyStructureHierarchyStructure> hierarchyStructures;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String region;

  GetUserHierarchyStructureResult({
    required this.hierarchyStructures,
    required this.id,
    required this.instanceId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hierarchyStructures'] = pulumi.Input.encodeList<
        GetUserHierarchyStructureHierarchyStructure,
        Map<String, dynamic>>(hierarchyStructures, (value) => value.toMap());
    map['id'] = id;
    map['instanceId'] = instanceId;
    map['region'] = region;
    return map;
  }

  factory GetUserHierarchyStructureResult.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyStructureResult(
      hierarchyStructures:
          pulumi.Input.decodeList<GetUserHierarchyStructureHierarchyStructure>(
              map['hierarchyStructures'],
              (value) => GetUserHierarchyStructureHierarchyStructure.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      region: map['region'] as String,
    );
  }
}
