// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_placement_spec_response.dart';

/// The configuration profile for default ClusterResourcePlacement for placement.
class PlacementProfileResponse {
  /// The default ClusterResourcePlacement policy configuration.
  final pulumi.Input<ClusterResourcePlacementSpecResponse?>? defaultClusterResourcePlacement;

  /// Creates a new [PlacementProfileResponse].
  /// [defaultClusterResourcePlacement] The default ClusterResourcePlacement policy configuration.
  const PlacementProfileResponse({
    this.defaultClusterResourcePlacement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterResourcePlacement': ?pulumi.Input.mapOptionalInputValue<ClusterResourcePlacementSpecResponse, Map<String, dynamic>>(defaultClusterResourcePlacement, (value) => value.toMap()),
    };
  }

  factory PlacementProfileResponse.fromMap(Map<String, dynamic> map) {
    return PlacementProfileResponse(
      defaultClusterResourcePlacement: (() { final guardedValue = map['defaultClusterResourcePlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterResourcePlacementSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
