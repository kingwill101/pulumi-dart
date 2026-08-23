// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_placement_policy.dart';

/// ClusterResourcePlacementSpec defines the desired state of ClusterResourcePlacement.
class PlacementV1ClusterResourcePlacementSpec {
  /// Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  final pulumi.Input<PlacementV1PlacementPolicy>? policy;

  /// Creates a new [PlacementV1ClusterResourcePlacementSpec].
  /// [policy] Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  const PlacementV1ClusterResourcePlacementSpec({
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': ?pulumi.Input.mapOptionalInputValue<PlacementV1PlacementPolicy, Map<String, dynamic>>(policy, (value) => value.toMap()),
    };
  }

  factory PlacementV1ClusterResourcePlacementSpec.fromMap(Map<String, dynamic> map) {
    return PlacementV1ClusterResourcePlacementSpec(
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementV1PlacementPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
