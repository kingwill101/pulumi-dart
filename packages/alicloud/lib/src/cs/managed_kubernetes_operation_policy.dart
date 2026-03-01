// ignore_for_file: unused_element, unnecessary_cast

import 'managed_kubernetes_operation_policy_cluster_auto_upgrade.dart';

class ManagedKubernetesOperationPolicy {
  /// Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  final ManagedKubernetesOperationPolicyClusterAutoUpgrade? clusterAutoUpgrade;

  /// Creates a new [ManagedKubernetesOperationPolicy].
  /// [clusterAutoUpgrade] Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  ManagedKubernetesOperationPolicy({
    this.clusterAutoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoUpgrade': ?clusterAutoUpgrade == null ? null : clusterAutoUpgrade!.toMap(),
    };
  }

  factory ManagedKubernetesOperationPolicy.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesOperationPolicy(
      clusterAutoUpgrade: map['clusterAutoUpgrade'] == null ? null : ManagedKubernetesOperationPolicyClusterAutoUpgrade.fromMap((map['clusterAutoUpgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

