// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fully_managed_upgrade_profile_response.dart';
import 'self_managed_upgrade_profile_response.dart';

/// AppLinkMember upgrade profile.
class UpgradeProfileResponse {
  /// Fully managed upgrade profile.
  final pulumi.Input<FullyManagedUpgradeProfileResponse>? fullyManagedUpgradeProfile;
  /// Upgrade mode.
  final pulumi.Input<String> mode;
  /// Self managed upgrade profile.
  final pulumi.Input<SelfManagedUpgradeProfileResponse>? selfManagedUpgradeProfile;

  /// Creates a new [UpgradeProfileResponse].
  /// [fullyManagedUpgradeProfile] Fully managed upgrade profile.
  /// [mode] Upgrade mode.
  /// [selfManagedUpgradeProfile] Self managed upgrade profile.
  const UpgradeProfileResponse({
    this.fullyManagedUpgradeProfile,
    required this.mode,
    this.selfManagedUpgradeProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyManagedUpgradeProfile': ?pulumi.Input.mapOptionalInputValue<FullyManagedUpgradeProfileResponse, Map<String, dynamic>>(fullyManagedUpgradeProfile, (value) => value.toMap()),
      'mode': mode,
      'selfManagedUpgradeProfile': ?pulumi.Input.mapOptionalInputValue<SelfManagedUpgradeProfileResponse, Map<String, dynamic>>(selfManagedUpgradeProfile, (value) => value.toMap()),
    };
  }

  factory UpgradeProfileResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeProfileResponse(
      fullyManagedUpgradeProfile: (() { final guardedValue = map['fullyManagedUpgradeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FullyManagedUpgradeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      selfManagedUpgradeProfile: (() { final guardedValue = map['selfManagedUpgradeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfManagedUpgradeProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
