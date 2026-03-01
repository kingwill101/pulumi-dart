// ignore_for_file: unused_element, unnecessary_cast

import 'serverless_kubernetes_operation_policy_cluster_auto_upgrade.dart';

class ServerlessKubernetesOperationPolicy {
  /// Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  final ServerlessKubernetesOperationPolicyClusterAutoUpgrade? clusterAutoUpgrade;

  /// Creates a new [ServerlessKubernetesOperationPolicy].
  /// [clusterAutoUpgrade] Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  ServerlessKubernetesOperationPolicy({
    this.clusterAutoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoUpgrade': ?clusterAutoUpgrade == null ? null : clusterAutoUpgrade!.toMap(),
    };
  }

  factory ServerlessKubernetesOperationPolicy.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesOperationPolicy(
      clusterAutoUpgrade: map['clusterAutoUpgrade'] == null ? null : ServerlessKubernetesOperationPolicyClusterAutoUpgrade.fromMap((map['clusterAutoUpgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

