// ignore_for_file: unused_element, unnecessary_cast

import 'placement_v1_placement_policy_response.dart';

/// ClusterResourcePlacementSpec defines the desired state of ClusterResourcePlacement.
class PlacementV1ClusterResourcePlacementSpecResponse {
  /// Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  final PlacementV1PlacementPolicyResponse? policy;

  /// Creates a new [PlacementV1ClusterResourcePlacementSpecResponse].
  /// [policy] Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  PlacementV1ClusterResourcePlacementSpecResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory PlacementV1ClusterResourcePlacementSpecResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterResourcePlacementSpecResponse(
      policy: map['policy'] == null ? null : PlacementV1PlacementPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

