// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for overrides when upgrading a cluster.
class UpgradeOverrideSettingsResponse {
  /// Whether to force upgrade the cluster. Note that this option instructs upgrade operation to bypass upgrade protections such as checking for deprecated API usage. Enable this option only with caution.
  final pulumi.Input<bool?>? forceUpgrade;
  /// Until when the overrides are effective. Note that this only matches the start time of an upgrade, and the effectiveness won't change once an upgrade starts even if the `until` expires as upgrade proceeds. This field is not set by default. It must be set for the overrides to take effect.
  final pulumi.Input<String?>? until;

  /// Creates a new [UpgradeOverrideSettingsResponse].
  /// [forceUpgrade] Whether to force upgrade the cluster. Note that this option instructs upgrade operation to bypass upgrade protections such as checking for deprecated API usage. Enable this option only with caution.
  /// [until] Until when the overrides are effective. Note that this only matches the start time of an upgrade, and the effectiveness won't change once an upgrade starts even if the `until` expires as upgrade proceeds. This field is not set by default. It must be set for the overrides to take effect.
  const UpgradeOverrideSettingsResponse({
    this.forceUpgrade,
    this.until,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpgrade': ?forceUpgrade,
      'until': ?until,
    };
  }

  factory UpgradeOverrideSettingsResponse.fromMap(Map<String, dynamic> map) {
    return UpgradeOverrideSettingsResponse(
      forceUpgrade: (() { final guardedValue = map['forceUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      until: (() { final guardedValue = map['until']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
