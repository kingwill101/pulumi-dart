// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_profile_response.dart';

/// The propagation to be used for provisioning the namespace among the fleet.
class PropagationPolicyResponse {
  /// The profile to be used for propagation via placement.
  final pulumi.Input<PlacementProfileResponse?>? placementProfile;
  /// The type of the policy to be used. Default is Placement.
  final pulumi.Input<String> type;

  /// Creates a new [PropagationPolicyResponse].
  /// [placementProfile] The profile to be used for propagation via placement.
  /// [type] The type of the policy to be used. Default is Placement.
  const PropagationPolicyResponse({
    this.placementProfile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placementProfile': ?pulumi.Input.mapOptionalInputValue<PlacementProfileResponse, Map<String, dynamic>>(placementProfile, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PropagationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PropagationPolicyResponse(
      placementProfile: (() { final guardedValue = map['placementProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PlacementProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
