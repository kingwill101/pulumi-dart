// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cluster_cross_cluster_replication_config_membership/cluster_cross_cluster_replication_config_membership.dart';
import '../cluster_cross_cluster_replication_config_primary_cluster/cluster_cross_cluster_replication_config_primary_cluster.dart';
import '../cluster_cross_cluster_replication_config_secondary_cluster/cluster_cross_cluster_replication_config_secondary_cluster.dart';

class ClusterCrossClusterReplicationConfig {
  /// The role of the cluster in cross cluster replication. Supported values are:
  /// 1. `CLUSTER_ROLE_UNSPECIFIED`: This is an independent cluster that has never participated in cross cluster replication. It allows both reads and writes.
  /// 1. `NONE`: This is an independent cluster that previously participated in cross cluster replication(either as a `PRIMARY` or `SECONDARY` cluster). It allows both reads and writes.
  /// 1. `PRIMARY`: This cluster serves as the replication source for secondary clusters that are replicating from it. Any data written to it is automatically replicated to its secondary clusters. It allows both reads and writes.
  /// 1. `SECONDARY`: This cluster replicates data from the primary cluster. It allows only reads.
  /// Possible values are: `CLUSTER_ROLE_UNSPECIFIED`, `NONE`, `PRIMARY`, `SECONDARY`.
  final String? clusterRole;

  /// (Output)
  /// An output only view of all the member clusters participating in cross cluster replication. This field is populated for all the member clusters irrespective of their cluster role.
  /// Structure is documented below.
  final List<ClusterCrossClusterReplicationConfigMembership>? memberships;

  /// Details of the primary cluster that is used as the replication source for this secondary cluster. This is allowed to be set only for clusters whose cluster role is of type `SECONDARY`.
  /// Structure is documented below.
  final ClusterCrossClusterReplicationConfigPrimaryCluster? primaryCluster;

  /// List of secondary clusters that are replicating from this primary cluster. This is allowed to be set only for clusters whose cluster role is of type `PRIMARY`.
  /// Structure is documented below.
  final List<ClusterCrossClusterReplicationConfigSecondaryCluster>?
      secondaryClusters;

  /// (Output)
  /// The last time cross cluster replication config was updated.
  final String? updateTime;

  ClusterCrossClusterReplicationConfig({
    this.clusterRole,
    this.memberships,
    this.primaryCluster,
    this.secondaryClusters,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterRoleValue = clusterRole;
    if (clusterRoleValue != null) {
      map['clusterRole'] = clusterRoleValue;
    }
    final membershipsValue = memberships;
    if (membershipsValue != null) {
      map['memberships'] = Input.encodeList<
          ClusterCrossClusterReplicationConfigMembership,
          Map<String, dynamic>>(membershipsValue, (value) => value.toMap());
    }
    final primaryClusterValue = primaryCluster;
    if (primaryClusterValue != null) {
      map['primaryCluster'] = primaryClusterValue.toMap();
    }
    final secondaryClustersValue = secondaryClusters;
    if (secondaryClustersValue != null) {
      map['secondaryClusters'] = Input.encodeList<
              ClusterCrossClusterReplicationConfigSecondaryCluster,
              Map<String, dynamic>>(
          secondaryClustersValue, (value) => value.toMap());
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory ClusterCrossClusterReplicationConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterCrossClusterReplicationConfig(
      clusterRole:
          map['clusterRole'] == null ? null : map['clusterRole'] as String,
      memberships: map['memberships'] == null
          ? null
          : Input.decodeList<ClusterCrossClusterReplicationConfigMembership>(
              map['memberships'],
              (value) => ClusterCrossClusterReplicationConfigMembership.fromMap(
                  (value as Map).cast<String, dynamic>())),
      primaryCluster: map['primaryCluster'] == null
          ? null
          : ClusterCrossClusterReplicationConfigPrimaryCluster.fromMap(
              (map['primaryCluster'] as Map).cast<String, dynamic>()),
      secondaryClusters: map['secondaryClusters'] == null
          ? null
          : Input.decodeList<
                  ClusterCrossClusterReplicationConfigSecondaryCluster>(
              map['secondaryClusters'],
              (value) =>
                  ClusterCrossClusterReplicationConfigSecondaryCluster.fromMap(
                      (value as Map).cast<String, dynamic>())),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
