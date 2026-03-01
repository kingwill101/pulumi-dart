// ignore_for_file: unused_element, unnecessary_cast


class GetClustersClusterOperationPolicyClusterAutoUpgrade {
  /// Cluster automatic upgrade frequency.
  final String channel;
  /// Whether to enable cluster automatic upgrade.
  final bool enabled;

  /// Creates a new [GetClustersClusterOperationPolicyClusterAutoUpgrade].
  /// [channel] Cluster automatic upgrade frequency.
  /// [enabled] Whether to enable cluster automatic upgrade.
  GetClustersClusterOperationPolicyClusterAutoUpgrade({
    required this.channel,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
      'enabled': enabled,
    };
  }

  factory GetClustersClusterOperationPolicyClusterAutoUpgrade.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterOperationPolicyClusterAutoUpgrade(
      channel: map['channel'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}

