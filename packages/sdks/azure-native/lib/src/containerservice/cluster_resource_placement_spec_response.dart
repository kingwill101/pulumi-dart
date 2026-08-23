// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_policy_response.dart';

/// ClusterResourcePlacementSpec defines the desired state of ClusterResourcePlacement.
class ClusterResourcePlacementSpecResponse {
  /// Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  final pulumi.Input<PlacementPolicyResponse>? policy;

  /// Creates a new [ClusterResourcePlacementSpecResponse].
  /// [policy] Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  const ClusterResourcePlacementSpecResponse({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?pulumi.Input.mapOptionalInputValue<PlacementPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory ClusterResourcePlacementSpecResponse.fromMap(Map<String, dynamic> map) {
    return ClusterResourcePlacementSpecResponse(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
