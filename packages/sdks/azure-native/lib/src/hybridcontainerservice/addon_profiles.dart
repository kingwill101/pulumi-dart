// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Addon configurations
class AddonProfiles {
  /// Config - Key-value pairs for configuring an add-on.
  final pulumi.Input<Map<String, String>>? config;
  /// Enabled - Whether the add-on is enabled or not.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AddonProfiles].
  /// [config] Config - Key-value pairs for configuring an add-on.
  /// [enabled] Enabled - Whether the add-on is enabled or not.
  AddonProfiles({
    this.config,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'enabled': ?enabled,
    };
  }

  factory AddonProfiles.fromMap(Map<String, dynamic> map) {
    return AddonProfiles(
      config: map['config'] == null ? null : ((map['config']! as Map).cast<String, String>()).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

