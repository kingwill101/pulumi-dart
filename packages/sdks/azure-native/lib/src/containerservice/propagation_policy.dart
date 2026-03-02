// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'placement_profile.dart';

/// The propagation to be used for provisioning the namespace among the fleet.
class PropagationPolicy {
  /// The profile to be used for propagation via placement.
  final pulumi.Input<PlacementProfile>? placementProfile;
  /// The type of the policy to be used. Default is Placement.
  final pulumi.Input<String> type;

  /// Creates a new [PropagationPolicy].
  /// [placementProfile] The profile to be used for propagation via placement.
  /// [type] The type of the policy to be used. Default is Placement.
  PropagationPolicy({
    this.placementProfile,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'placementProfile': ?pulumi.Input.mapOptionalInputValue<PlacementProfile, Map<String, dynamic>>(placementProfile, (value) => value.toMap()),
      'type': type,
    };
  }

  factory PropagationPolicy.fromMap(Map<String, dynamic> map) {
    return PropagationPolicy(
      placementProfile: map['placementProfile'] == null ? null : (PlacementProfile.fromMap((map['placementProfile'] as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

