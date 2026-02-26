// ignore_for_file: unused_element, unnecessary_cast

import '../node_pool_upgrade_settings_blue_green_settings/node_pool_upgrade_settings_blue_green_settings.dart';

class NodePoolUpgradeSettings {
  /// The settings to adjust [blue green upgrades](https://cloud.google.com/kubernetes-engine/docs/concepts/node-pool-upgrade-strategies#blue-green-upgrade-strategy).
  /// Structure is documented below
  final NodePoolUpgradeSettingsBlueGreenSettings? blueGreenSettings;

  /// The number of additional nodes that can be added to the node pool during
  /// an upgrade. Increasing <span pulumi-lang-nodejs="`maxSurge`" pulumi-lang-dotnet="`MaxSurge`" pulumi-lang-go="`maxSurge`" pulumi-lang-python="`max_surge`" pulumi-lang-yaml="`maxSurge`" pulumi-lang-java="`maxSurge`">`max_surge`</span> raises the number of nodes that can be upgraded simultaneously.
  /// Can be set to 0 or greater.
  final int? maxSurge;

  /// The number of nodes that can be simultaneously unavailable during
  /// an upgrade. Increasing <span pulumi-lang-nodejs="`maxUnavailable`" pulumi-lang-dotnet="`MaxUnavailable`" pulumi-lang-go="`maxUnavailable`" pulumi-lang-python="`max_unavailable`" pulumi-lang-yaml="`maxUnavailable`" pulumi-lang-java="`maxUnavailable`">`max_unavailable`</span> raises the number of nodes that can be upgraded in
  /// parallel. Can be set to 0 or greater.
  ///
  /// <span pulumi-lang-nodejs="`maxSurge`" pulumi-lang-dotnet="`MaxSurge`" pulumi-lang-go="`maxSurge`" pulumi-lang-python="`max_surge`" pulumi-lang-yaml="`maxSurge`" pulumi-lang-java="`maxSurge`">`max_surge`</span> and <span pulumi-lang-nodejs="`maxUnavailable`" pulumi-lang-dotnet="`MaxUnavailable`" pulumi-lang-go="`maxUnavailable`" pulumi-lang-python="`max_unavailable`" pulumi-lang-yaml="`maxUnavailable`" pulumi-lang-java="`maxUnavailable`">`max_unavailable`</span> must not be negative and at least one of them must be greater than zero.
  final int? maxUnavailable;

  /// The upgrade strategy to be used for upgrading the nodes.
  final String? strategy;

  NodePoolUpgradeSettings({
    this.blueGreenSettings,
    this.maxSurge,
    this.maxUnavailable,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blueGreenSettingsValue = blueGreenSettings;
    if (blueGreenSettingsValue != null) {
      map['blueGreenSettings'] = blueGreenSettingsValue.toMap();
    }
    final maxSurgeValue = maxSurge;
    if (maxSurgeValue != null) {
      map['maxSurge'] = maxSurgeValue;
    }
    final maxUnavailableValue = maxUnavailable;
    if (maxUnavailableValue != null) {
      map['maxUnavailable'] = maxUnavailableValue;
    }
    final strategyValue = strategy;
    if (strategyValue != null) {
      map['strategy'] = strategyValue;
    }
    return map;
  }

  factory NodePoolUpgradeSettings.fromMap(Map<String, dynamic> map) {
    return NodePoolUpgradeSettings(
      blueGreenSettings: map['blueGreenSettings'] == null
          ? null
          : NodePoolUpgradeSettingsBlueGreenSettings.fromMap(
              (map['blueGreenSettings'] as Map).cast<String, dynamic>()),
      maxSurge: map['maxSurge'] == null ? null : map['maxSurge'] as int,
      maxUnavailable:
          map['maxUnavailable'] == null ? null : map['maxUnavailable'] as int,
      strategy: map['strategy'] == null ? null : map['strategy'] as String,
    );
  }
}
