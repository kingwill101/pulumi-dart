// ignore_for_file: unused_element, unnecessary_cast


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
  final String? channel;
  /// Whether the RRSA feature has been enabled.
  final bool? enabled;

  /// Creates a new [ServerlessKubernetesOperationPolicyClusterAutoUpgrade].
  /// [channel] The automatic cluster upgrade channel. Valid values: `patch`, `stable`, `rapid`.
  /// [enabled] Whether the RRSA feature has been enabled.
  ServerlessKubernetesOperationPolicyClusterAutoUpgrade({
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
      channel: map['channel'] == null ? null : map['channel'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

