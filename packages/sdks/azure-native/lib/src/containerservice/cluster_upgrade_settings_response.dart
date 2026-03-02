// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_override_settings_response.dart';

/// Settings for upgrading a cluster.
class ClusterUpgradeSettingsResponse {
  /// Settings for overrides.
  final pulumi.Input<UpgradeOverrideSettingsResponse>? overrideSettings;

  /// Creates a new [ClusterUpgradeSettingsResponse].
  /// [overrideSettings] Settings for overrides.
  ClusterUpgradeSettingsResponse({
    this.overrideSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideSettings': ?pulumi.Input.mapOptionalInputValue<UpgradeOverrideSettingsResponse, Map<String, dynamic>>(overrideSettings, (value) => value.toMap()),
    };
  }

  factory ClusterUpgradeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeSettingsResponse(
      overrideSettings: map['overrideSettings'] == null ? null : (UpgradeOverrideSettingsResponse.fromMap((map['overrideSettings']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

