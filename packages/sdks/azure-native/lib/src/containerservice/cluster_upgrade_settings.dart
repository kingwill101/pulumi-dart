// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'upgrade_override_settings.dart';

/// Settings for upgrading a cluster.
class ClusterUpgradeSettings {
  /// Settings for overrides.
  final pulumi.Input<UpgradeOverrideSettings>? overrideSettings;

  /// Creates a new [ClusterUpgradeSettings].
  /// [overrideSettings] Settings for overrides.
  ClusterUpgradeSettings({
    this.overrideSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overrideSettings': ?pulumi.Input.mapOptionalInputValue<UpgradeOverrideSettings, Map<String, dynamic>>(overrideSettings, (value) => value.toMap()),
    };
  }

  factory ClusterUpgradeSettings.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradeSettings(
      overrideSettings: map['overrideSettings'] == null ? null : (UpgradeOverrideSettings.fromMap((map['overrideSettings'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

