// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_affinity.dart';
import 'placement_v1_toleration.dart';

/// PlacementPolicy contains the rules to select target member clusters to place the selected resources. Note that only clusters that are both joined and satisfying the rules will be selected. You can only specify at most one of the two fields: ClusterNames and Affinity. If none is specified, all the joined clusters are selected.
class PlacementV1PlacementPolicy {
  /// Affinity contains cluster affinity scheduling rules. Defines which member clusters to place the selected resources. Only valid if the placement type is "PickAll" or "PickN".
  final pulumi.Input<PlacementV1Affinity>? affinity;
  /// ClusterNames contains a list of names of MemberCluster to place the selected resources. Only valid if the placement type is "PickFixed"
  final pulumi.Input<List<String>>? clusterNames;
  /// Type of placement. Can be "PickAll", "PickN" or "PickFixed". Default is PickAll.
  final pulumi.Input<String>? placementType;
  /// If specified, the ClusterResourcePlacement's Tolerations. Tolerations cannot be updated or deleted. This field is beta-level and is for the taints and tolerations feature.
  final pulumi.Input<List<PlacementV1Toleration>>? tolerations;

  /// Creates a new [PlacementV1PlacementPolicy].
  /// [affinity] Affinity contains cluster affinity scheduling rules. Defines which member clusters to place the selected resources. Only valid if the placement type is "PickAll" or "PickN".
  /// [clusterNames] ClusterNames contains a list of names of MemberCluster to place the selected resources. Only valid if the placement type is "PickFixed"
  /// [placementType] Type of placement. Can be "PickAll", "PickN" or "PickFixed". Default is PickAll.
  /// [tolerations] If specified, the ClusterResourcePlacement's Tolerations. Tolerations cannot be updated or deleted. This field is beta-level and is for the taints and tolerations feature.
  PlacementV1PlacementPolicy({
    this.affinity,
    this.clusterNames,
    this.placementType,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity': ?pulumi.Input.mapOptionalInputValue<PlacementV1Affinity, Map<String, dynamic>>(affinity, (value) => value.toMap()),
      'clusterNames': ?clusterNames,
      'placementType': ?placementType,
      'tolerations': ?pulumi.Input.mapOptionalInputValue<List<PlacementV1Toleration>, List<Map<String, dynamic>>>(tolerations, (value) => pulumi.Input.encodeList<PlacementV1Toleration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PlacementV1PlacementPolicy.fromMap(Map<String, dynamic> map) {
    return PlacementV1PlacementPolicy(
      affinity: map['affinity'] == null ? null : (PlacementV1Affinity.fromMap((map['affinity'] as Map).cast<String, dynamic>())).input(),
      clusterNames: map['clusterNames'] == null ? null : ((map['clusterNames'] as List).cast<String>()).input(),
      placementType: map['placementType'] == null ? null : (map['placementType'] as String).input(),
      tolerations: map['tolerations'] == null ? null : (pulumi.Input.decodeList<PlacementV1Toleration>(map['tolerations'], (value) => PlacementV1Toleration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

