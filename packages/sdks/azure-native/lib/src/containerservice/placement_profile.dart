// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_cluster_resource_placement_spec.dart';

/// The configuration profile for default ClusterResourcePlacement for placement.
class PlacementProfile {
  /// The default ClusterResourcePlacement policy configuration.
  final pulumi.Input<PlacementV1ClusterResourcePlacementSpec>? defaultClusterResourcePlacement;

  /// Creates a new [PlacementProfile].
  /// [defaultClusterResourcePlacement] The default ClusterResourcePlacement policy configuration.
  const PlacementProfile({
    this.defaultClusterResourcePlacement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterResourcePlacement': ?pulumi.Input.mapOptionalInputValue<PlacementV1ClusterResourcePlacementSpec, Map<String, dynamic>>(defaultClusterResourcePlacement, (value) => value.toMap()),
    };
  }

  factory PlacementProfile.fromMap(Map<String, dynamic> map) {
    return PlacementProfile(
      defaultClusterResourcePlacement: (() { final guardedValue = map['defaultClusterResourcePlacement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementV1ClusterResourcePlacementSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

