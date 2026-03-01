// ignore_for_file: unused_element, unnecessary_cast

import 'placement_v1_cluster_resource_placement_spec_response.dart';

/// The configuration profile for default ClusterResourcePlacement for placement.
class PlacementProfileResponse {
  /// The default ClusterResourcePlacement policy configuration.
  final PlacementV1ClusterResourcePlacementSpecResponse? defaultClusterResourcePlacement;

  /// Creates a new [PlacementProfileResponse].
  /// [defaultClusterResourcePlacement] The default ClusterResourcePlacement policy configuration.
  PlacementProfileResponse({
    this.defaultClusterResourcePlacement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterResourcePlacement': ?defaultClusterResourcePlacement == null ? null : defaultClusterResourcePlacement!.toMap(),
    };
  }

  factory PlacementProfileResponse.fromMap(Map<String, dynamic> map) {
    return PlacementProfileResponse(
      defaultClusterResourcePlacement: map['defaultClusterResourcePlacement'] == null ? null : PlacementV1ClusterResourcePlacementSpecResponse.fromMap((map['defaultClusterResourcePlacement'] as Map).cast<String, dynamic>()),
    );
  }
}

