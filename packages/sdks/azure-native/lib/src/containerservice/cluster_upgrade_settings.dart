// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_override_settings.dart';

/// Settings for upgrading a cluster.
class ClusterUpgradeSettings {
  /// Settings for overrides.
  final UpgradeOverrideSettings? overrideSettings;

  /// Creates a new [ClusterUpgradeSettings].
  /// [overrideSettings] Settings for overrides.
  ClusterUpgradeSettings({
    this.overrideSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideSettings': ?overrideSettings == null ? null : overrideSettings!.toMap(),
    };
  }

  factory ClusterUpgradeSettings.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeSettings(
      overrideSettings: map['overrideSettings'] == null ? null : UpgradeOverrideSettings.fromMap((map['overrideSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

