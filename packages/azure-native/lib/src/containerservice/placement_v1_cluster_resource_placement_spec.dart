// ignore_for_file: unused_element, unnecessary_cast

import 'placement_v1_placement_policy.dart';

/// ClusterResourcePlacementSpec defines the desired state of ClusterResourcePlacement.
class PlacementV1ClusterResourcePlacementSpec {
  /// Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  final PlacementV1PlacementPolicy? policy;

  /// Creates a new [PlacementV1ClusterResourcePlacementSpec].
  /// [policy] Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  PlacementV1ClusterResourcePlacementSpec({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory PlacementV1ClusterResourcePlacementSpec.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterResourcePlacementSpec(
      policy: map['policy'] == null ? null : PlacementV1PlacementPolicy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

