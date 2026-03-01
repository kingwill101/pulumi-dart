// ignore_for_file: unused_element, unnecessary_cast

import 'placement_profile.dart';

/// The propagation to be used for provisioning the namespace among the fleet.
class PropagationPolicy {
  /// The profile to be used for propagation via placement.
  final PlacementProfile? placementProfile;
  /// The type of the policy to be used. Default is Placement.
  final String type;

  /// Creates a new [PropagationPolicy].
  /// [placementProfile] The profile to be used for propagation via placement.
  /// [type] The type of the policy to be used. Default is Placement.
  PropagationPolicy({
    this.placementProfile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placementProfile': ?placementProfile == null ? null : placementProfile!.toMap(),
      'type': type,
    };
  }

  factory PropagationPolicy.fromMap(Map<String, dynamic> map) {
    return PropagationPolicy(
      placementProfile: map['placementProfile'] == null ? null : PlacementProfile.fromMap((map['placementProfile'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

