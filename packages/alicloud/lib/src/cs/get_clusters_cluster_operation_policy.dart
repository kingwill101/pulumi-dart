// ignore_for_file: unused_element, unnecessary_cast

import 'get_clusters_cluster_operation_policy_cluster_auto_upgrade.dart';

class GetClustersClusterOperationPolicy {
  /// Cluster automatic upgrade.
  final GetClustersClusterOperationPolicyClusterAutoUpgrade clusterAutoUpgrade;

  /// Creates a new [GetClustersClusterOperationPolicy].
  /// [clusterAutoUpgrade] Cluster automatic upgrade.
  GetClustersClusterOperationPolicy({
    required this.clusterAutoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoUpgrade': clusterAutoUpgrade.toMap(),
    };
  }

  factory GetClustersClusterOperationPolicy.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterOperationPolicy(
      clusterAutoUpgrade: GetClustersClusterOperationPolicyClusterAutoUpgrade.fromMap((map['clusterAutoUpgrade'] as Map).cast<String, dynamic>()),
    );
  }
}

