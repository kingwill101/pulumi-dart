// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_hierarchy_structure_hierarchy_structure.dart';

/// Result data returned by getUserHierarchyStructure.
class GetUserHierarchyStructureResult {
  /// Block that defines the hierarchy structure's levels. The `hierarchyStructure` block is documented below.
  final List<GetUserHierarchyStructureHierarchyStructure>? hierarchyStructures;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceId;
  final String? region;

  /// Creates a new [GetUserHierarchyStructureResult].
  /// [hierarchyStructures] Block that defines the hierarchy structure's levels. The `hierarchyStructure` block is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceId] Optional.
  /// [region] Optional.
  const GetUserHierarchyStructureResult({
    this.hierarchyStructures,
    this.id,
    this.instanceId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hierarchyStructures': ?(() { final guardedValue = hierarchyStructures; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserHierarchyStructureHierarchyStructure, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceId': ?instanceId,
      'region': ?region,
    };
  }

  factory GetUserHierarchyStructureResult.fromMap(Map<String, dynamic> map) {
    return GetUserHierarchyStructureResult(
      hierarchyStructures: (() { final guardedValue = map['hierarchyStructures']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserHierarchyStructureHierarchyStructure>(guardedValue, (value) => GetUserHierarchyStructureHierarchyStructure.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
