// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_v1_affinity_response.dart';
import 'placement_v1_toleration_response.dart';

/// PlacementPolicy contains the rules to select target member clusters to place the selected resources. Note that only clusters that are both joined and satisfying the rules will be selected. You can only specify at most one of the two fields: ClusterNames and Affinity. If none is specified, all the joined clusters are selected.
class PlacementV1PlacementPolicyResponse {
  /// Affinity contains cluster affinity scheduling rules. Defines which member clusters to place the selected resources. Only valid if the placement type is "PickAll" or "PickN".
  final pulumi.Input<PlacementV1AffinityResponse>? affinity;

  /// ClusterNames contains a list of names of MemberCluster to place the selected resources. Only valid if the placement type is "PickFixed"
  final pulumi.Input<List<String>>? clusterNames;

  /// Type of placement. Can be "PickAll", "PickN" or "PickFixed". Default is PickAll.
  final pulumi.Input<String>? placementType;

  /// If specified, the ClusterResourcePlacement's Tolerations. Tolerations cannot be updated or deleted. This field is beta-level and is for the taints and tolerations feature.
  final pulumi.Input<List<PlacementV1TolerationResponse>>? tolerations;

  /// Creates a new [PlacementV1PlacementPolicyResponse].
  /// [affinity] Affinity contains cluster affinity scheduling rules. Defines which member clusters to place the selected resources. Only valid if the placement type is "PickAll" or "PickN".
  /// [clusterNames] ClusterNames contains a list of names of MemberCluster to place the selected resources. Only valid if the placement type is "PickFixed"
  /// [placementType] Type of placement. Can be "PickAll", "PickN" or "PickFixed". Default is PickAll.
  /// [tolerations] If specified, the ClusterResourcePlacement's Tolerations. Tolerations cannot be updated or deleted. This field is beta-level and is for the taints and tolerations feature.
  PlacementV1PlacementPolicyResponse({
    this.affinity,
    this.clusterNames,
    this.placementType,
    this.tolerations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'affinity':
          ?pulumi.Input.mapOptionalInputValue<
            PlacementV1AffinityResponse,
            Map<String, dynamic>
          >(affinity, (value) => value.toMap()),
      'clusterNames': ?clusterNames,
      'placementType': ?placementType,
      'tolerations':
          ?pulumi.Input.mapOptionalInputValue<
            List<PlacementV1TolerationResponse>,
            List<Map<String, dynamic>>
          >(
            tolerations,
            (value) =>
                pulumi.Input.encodeList<
                  PlacementV1TolerationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory PlacementV1PlacementPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PlacementV1PlacementPolicyResponse(
      affinity: (() {
        final guardedValue = map['affinity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PlacementV1AffinityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterNames: (() {
        final guardedValue = map['clusterNames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      placementType: (() {
        final guardedValue = map['placementType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tolerations: (() {
        final guardedValue = map['tolerations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<PlacementV1TolerationResponse>(
            guardedValue,
            (value) => PlacementV1TolerationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
