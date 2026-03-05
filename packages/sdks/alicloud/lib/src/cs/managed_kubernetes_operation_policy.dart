// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_kubernetes_operation_policy_cluster_auto_upgrade.dart';

class ManagedKubernetesOperationPolicy {
  /// Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  final pulumi.Input<ManagedKubernetesOperationPolicyClusterAutoUpgrade>? clusterAutoUpgrade;

  /// Creates a new [ManagedKubernetesOperationPolicy].
  /// [clusterAutoUpgrade] Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  ManagedKubernetesOperationPolicy({
    this.clusterAutoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoUpgrade': ?pulumi.Input.mapOptionalInputValue<ManagedKubernetesOperationPolicyClusterAutoUpgrade, Map<String, dynamic>>(clusterAutoUpgrade, (value) => value.toMap()),
    };
  }

  factory ManagedKubernetesOperationPolicy.fromMap(Map<String, dynamic> map) {
    return ManagedKubernetesOperationPolicy(
      clusterAutoUpgrade: (() { final guardedValue = map['clusterAutoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedKubernetesOperationPolicyClusterAutoUpgrade.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

