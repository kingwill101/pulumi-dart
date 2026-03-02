// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_kubernetes_operation_policy_cluster_auto_upgrade.dart';

class ServerlessKubernetesOperationPolicy {
  /// Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  final pulumi.Input<ServerlessKubernetesOperationPolicyClusterAutoUpgrade>? clusterAutoUpgrade;

  /// Creates a new [ServerlessKubernetesOperationPolicy].
  /// [clusterAutoUpgrade] Automatic cluster upgrade policy. See `cluster_auto_upgrade` below.
  ServerlessKubernetesOperationPolicy({
    this.clusterAutoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoUpgrade': ?pulumi.Input.mapOptionalInputValue<ServerlessKubernetesOperationPolicyClusterAutoUpgrade, Map<String, dynamic>>(clusterAutoUpgrade, (value) => value.toMap()),
    };
  }

  factory ServerlessKubernetesOperationPolicy.fromMap(Map<String, dynamic> map) {
    return ServerlessKubernetesOperationPolicy(
      clusterAutoUpgrade: map['clusterAutoUpgrade'] == null ? null : (ServerlessKubernetesOperationPolicyClusterAutoUpgrade.fromMap((map['clusterAutoUpgrade'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

