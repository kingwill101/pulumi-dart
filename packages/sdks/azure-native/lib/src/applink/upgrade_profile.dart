// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'fully_managed_upgrade_profile.dart';
import 'self_managed_upgrade_profile.dart';

/// AppLinkMember upgrade profile.
class UpgradeProfile {
  /// Fully managed upgrade profile.
  final pulumi.Input<FullyManagedUpgradeProfile?>? fullyManagedUpgradeProfile;
  /// Upgrade mode.
  final pulumi.Input<dynamic> mode;
  /// Self managed upgrade profile.
  final pulumi.Input<SelfManagedUpgradeProfile?>? selfManagedUpgradeProfile;

  /// Creates a new [UpgradeProfile].
  /// [fullyManagedUpgradeProfile] Fully managed upgrade profile.
  /// [mode] Upgrade mode.
  /// [selfManagedUpgradeProfile] Self managed upgrade profile.
  const UpgradeProfile({
    this.fullyManagedUpgradeProfile,
    required this.mode,
    this.selfManagedUpgradeProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyManagedUpgradeProfile': ?pulumi.Input.mapOptionalInputValue<FullyManagedUpgradeProfile, Map<String, dynamic>>(fullyManagedUpgradeProfile, (value) => value.toMap()),
      'mode': mode,
      'selfManagedUpgradeProfile': ?pulumi.Input.mapOptionalInputValue<SelfManagedUpgradeProfile, Map<String, dynamic>>(selfManagedUpgradeProfile, (value) => value.toMap()),
    };
  }

  factory UpgradeProfile.fromMap(Map<String, dynamic> map) {
    return UpgradeProfile(
      fullyManagedUpgradeProfile: (() { final guardedValue = map['fullyManagedUpgradeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FullyManagedUpgradeProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: pulumi.Input.fromValue(map['mode']),
      selfManagedUpgradeProfile: (() { final guardedValue = map['selfManagedUpgradeProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelfManagedUpgradeProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
