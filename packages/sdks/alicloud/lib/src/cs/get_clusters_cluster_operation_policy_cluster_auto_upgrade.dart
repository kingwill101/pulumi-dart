// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterOperationPolicyClusterAutoUpgrade {
  /// Cluster automatic upgrade frequency.
  final pulumi.Input<String> channel;
  /// Whether to enable cluster automatic upgrade.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClustersClusterOperationPolicyClusterAutoUpgrade].
  /// [channel] Cluster automatic upgrade frequency.
  /// [enabled] Whether to enable cluster automatic upgrade.
  const GetClustersClusterOperationPolicyClusterAutoUpgrade({
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
      channel: pulumi.Input.fromValue(map['channel'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

