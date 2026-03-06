// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerlessKubernetesOperationPolicyClusterAutoUpgrade {
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

  /// Creates a new [ServerlessKubernetesOperationPolicyClusterAutoUpgrade].
  /// [channel] The automatic cluster upgrade channel. Valid values: `patch`, `stable`, `rapid`.
  /// [enabled] Whether the RRSA feature has been enabled.
  const ServerlessKubernetesOperationPolicyClusterAutoUpgrade({
    this.channel,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': ?channel,
      'enabled': ?enabled,
    };
  }

  factory ServerlessKubernetesOperationPolicyClusterAutoUpgrade.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesOperationPolicyClusterAutoUpgrade(
      channel: (() { final guardedValue = map['channel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

