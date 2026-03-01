// ignore_for_file: unused_element, unnecessary_cast

import 'placement_v1_cluster_affinity.dart';

/// Affinity is a group of cluster affinity scheduling rules. More to be added.
class PlacementV1Affinity {
  /// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  final PlacementV1ClusterAffinity? clusterAffinity;

  /// Creates a new [PlacementV1Affinity].
  /// [clusterAffinity] ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  PlacementV1Affinity({
    this.clusterAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAffinity': ?clusterAffinity == null ? null : clusterAffinity!.toMap(),
    };
  }

  factory PlacementV1Affinity.fromMap(Map<String, dynamic> map) {
    return PlacementV1Affinity(
      clusterAffinity: map['clusterAffinity'] == null ? null : PlacementV1ClusterAffinity.fromMap((map['clusterAffinity'] as Map).cast<String, dynamic>()),
    );
  }
}

