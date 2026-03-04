// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_cluster_resource_placement_spec_response.dart';

/// The configuration profile for default ClusterResourcePlacement for placement.
class PlacementProfileResponse {
  /// The default ClusterResourcePlacement policy configuration.
  final pulumi.Input<PlacementV1ClusterResourcePlacementSpecResponse>?
  defaultClusterResourcePlacement;

  /// Creates a new [PlacementProfileResponse].
  /// [defaultClusterResourcePlacement] The default ClusterResourcePlacement policy configuration.
  PlacementProfileResponse({this.defaultClusterResourcePlacement});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultClusterResourcePlacement':
          ?pulumi.Input.mapOptionalInputValue<
            PlacementV1ClusterResourcePlacementSpecResponse,
            Map<String, dynamic>
          >(defaultClusterResourcePlacement, (value) => value.toMap()),
    };
  }

  factory PlacementProfileResponse.fromMap(Map<String, dynamic> map) {
    return PlacementProfileResponse(
      defaultClusterResourcePlacement: (() {
        final guardedValue = map['defaultClusterResourcePlacement'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlacementV1ClusterResourcePlacementSpecResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
