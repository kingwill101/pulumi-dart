// ignore_for_file: unused_element, unnecessary_cast

import 'placement_v1_cluster_affinity_response.dart';

/// Affinity is a group of cluster affinity scheduling rules. More to be added.
class PlacementV1AffinityResponse {
  /// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  final PlacementV1ClusterAffinityResponse? clusterAffinity;

  /// Creates a new [PlacementV1AffinityResponse].
  /// [clusterAffinity] ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  PlacementV1AffinityResponse({
    this.clusterAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAffinity': ?clusterAffinity == null ? null : clusterAffinity!.toMap(),
    };
  }

  factory PlacementV1AffinityResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1AffinityResponse(
      clusterAffinity: map['clusterAffinity'] == null ? null : PlacementV1ClusterAffinityResponse.fromMap((map['clusterAffinity'] as Map).cast<String, dynamic>()),
    );
  }
}

