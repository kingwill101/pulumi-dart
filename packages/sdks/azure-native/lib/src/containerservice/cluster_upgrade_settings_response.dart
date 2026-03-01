// ignore_for_file: unused_element, unnecessary_cast

import 'upgrade_override_settings_response.dart';

/// Settings for upgrading a cluster.
class ClusterUpgradeSettingsResponse {
  /// Settings for overrides.
  final UpgradeOverrideSettingsResponse? overrideSettings;

  /// Creates a new [ClusterUpgradeSettingsResponse].
  /// [overrideSettings] Settings for overrides.
  ClusterUpgradeSettingsResponse({
    this.overrideSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideSettings': ?overrideSettings == null ? null : overrideSettings!.toMap(),
    };
  }

  factory ClusterUpgradeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeSettingsResponse(
      overrideSettings: map['overrideSettings'] == null ? null : UpgradeOverrideSettingsResponse.fromMap((map['overrideSettings'] as Map).cast<String, dynamic>()),
    );
  }
}

