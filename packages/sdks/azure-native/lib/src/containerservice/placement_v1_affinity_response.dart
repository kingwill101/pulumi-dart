// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_cluster_affinity_response.dart';

/// Affinity is a group of cluster affinity scheduling rules. More to be added.
class PlacementV1AffinityResponse {
  /// ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  final pulumi.Input<PlacementV1ClusterAffinityResponse>? clusterAffinity;

  /// Creates a new [PlacementV1AffinityResponse].
  /// [clusterAffinity] ClusterAffinity contains cluster affinity scheduling rules for the selected resources.
  const PlacementV1AffinityResponse({
    this.clusterAffinity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAffinity': ?pulumi.Input.mapOptionalInputValue<PlacementV1ClusterAffinityResponse, Map<String, dynamic>>(clusterAffinity, (value) => value.toMap()),
    };
  }

  factory PlacementV1AffinityResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1AffinityResponse(
      clusterAffinity: (() { final guardedValue = map['clusterAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementV1ClusterAffinityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

