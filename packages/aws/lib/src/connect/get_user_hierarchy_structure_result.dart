// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_structure_hierarchy_structure.dart';

/// Result data returned by getUserHierarchyStructure.
class GetUserHierarchyStructureResult {
  /// Block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  final List<GetUserHierarchyStructureHierarchyStructure> hierarchyStructures;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceId;
  final String region;

  /// Creates a new [GetUserHierarchyStructureResult].
  /// [hierarchyStructures] Block that defines the hierarchy structure's levels. The `hierarchy_structure` block is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Required.
  /// [region] Required.
  GetUserHierarchyStructureResult({
    required this.hierarchyStructures,
    required this.id,
    required this.instanceId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyStructures':
          pulumi.Input.encodeList<
            GetUserHierarchyStructureHierarchyStructure,
            Map<String, dynamic>
          >(hierarchyStructures, (value) => value.toMap()),
      'id': id,
      'instanceId': instanceId,
      'region': region,
    };
  }

  factory GetUserHierarchyStructureResult.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyStructureResult(
      hierarchyStructures:
          pulumi.Input.decodeList<GetUserHierarchyStructureHierarchyStructure>(
            map['hierarchyStructures'],
            (value) => GetUserHierarchyStructureHierarchyStructure.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      region: map['region'] as String,
    );
  }
}
