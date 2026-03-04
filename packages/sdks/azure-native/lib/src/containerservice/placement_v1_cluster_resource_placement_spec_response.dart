// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_placement_policy_response.dart';

/// ClusterResourcePlacementSpec defines the desired state of ClusterResourcePlacement.
class PlacementV1ClusterResourcePlacementSpecResponse {
  /// Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  final pulumi.Input<PlacementV1PlacementPolicyResponse>? policy;

  /// Creates a new [PlacementV1ClusterResourcePlacementSpecResponse].
  /// [policy] Policy defines how to select member clusters to place the selected resources. If unspecified, all the joined member clusters are selected.
  PlacementV1ClusterResourcePlacementSpecResponse({this.policy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy':
          ?pulumi.Input.mapOptionalInputValue<
            PlacementV1PlacementPolicyResponse,
            Map<String, dynamic>
          >(policy, (value) => value.toMap()),
    };
  }

  factory PlacementV1ClusterResourcePlacementSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlacementV1ClusterResourcePlacementSpecResponse(
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlacementV1PlacementPolicyResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
