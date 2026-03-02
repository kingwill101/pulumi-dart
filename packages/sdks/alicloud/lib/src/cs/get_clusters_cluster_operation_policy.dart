// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster_operation_policy_cluster_auto_upgrade.dart';

class GetClustersClusterOperationPolicy {
  /// Cluster automatic upgrade.
  final pulumi.Input<GetClustersClusterOperationPolicyClusterAutoUpgrade> clusterAutoUpgrade;

  /// Creates a new [GetClustersClusterOperationPolicy].
  /// [clusterAutoUpgrade] Cluster automatic upgrade.
  GetClustersClusterOperationPolicy({
    required this.clusterAutoUpgrade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAutoUpgrade': pulumi.Input.mapInputValue<GetClustersClusterOperationPolicyClusterAutoUpgrade, Map<String, dynamic>>(clusterAutoUpgrade, (value) => value.toMap()),
    };
  }

  factory GetClustersClusterOperationPolicy.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterOperationPolicy(
      clusterAutoUpgrade: (GetClustersClusterOperationPolicyClusterAutoUpgrade.fromMap((map['clusterAutoUpgrade'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

