// ignore_for_file: unused_element, unnecessary_cast

import 'placement_profile_response.dart';

/// The propagation to be used for provisioning the namespace among the fleet.
class PropagationPolicyResponse {
  /// The profile to be used for propagation via placement.
  final PlacementProfileResponse? placementProfile;
  /// The type of the policy to be used. Default is Placement.
  final String type;

  /// Creates a new [PropagationPolicyResponse].
  /// [placementProfile] The profile to be used for propagation via placement.
  /// [type] The type of the policy to be used. Default is Placement.
  PropagationPolicyResponse({
    this.placementProfile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placementProfile': ?placementProfile == null ? null : placementProfile!.toMap(),
      'type': type,
    };
  }

  factory PropagationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return PropagationPolicyResponse(
      placementProfile: map['placementProfile'] == null ? null : PlacementProfileResponse.fromMap((map['placementProfile'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

