// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedKubernetesOperationPolicyClusterAutoUpgrade {
  /// The automatic cluster upgrade channel. Valid values: `patch`, `stable`, `rapid`.
  ///
  /// for example:
  /// ```
  /// operation_policy {
  /// cluster_auto_upgrade {
  /// enabled = true
  /// channel = "stable"
  /// }
  /// }
  /// ```
  final pulumi.Input<String>? channel;
  /// Whether the RRSA feature has been enabled.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ManagedKubernetesOperationPolicyClusterAutoUpgrade].
  /// [channel] The automatic cluster upgrade channel. Valid values: `patch`, `stable`, `rapid`.
  /// [enabled] Whether the RRSA feature has been enabled.
  ManagedKubernetesOperationPolicyClusterAutoUpgrade({
    this.channel,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'enabled': ?enabled,
    };
  }

  factory ManagedKubernetesOperationPolicyClusterAutoUpgrade.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesOperationPolicyClusterAutoUpgrade(
      channel: map['channel'] == null ? null : (map['channel'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

