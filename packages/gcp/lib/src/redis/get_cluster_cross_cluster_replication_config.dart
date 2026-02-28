// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cross_cluster_replication_config_membership.dart';
import 'get_cluster_cross_cluster_replication_config_primary_cluster.dart';
import 'get_cluster_cross_cluster_replication_config_secondary_cluster.dart';

class GetClusterCrossClusterReplicationConfig {
  /// The role of the cluster in cross cluster replication. Supported values are:
  ///
  /// 1. 'CLUSTER_ROLE_UNSPECIFIED': This is an independent cluster that has never participated in cross cluster replication. It allows both reads and writes.
  ///
  /// 1. 'NONE': This is an independent cluster that previously participated in cross cluster replication(either as a 'PRIMARY' or 'SECONDARY' cluster). It allows both reads and writes.
  ///
  /// 1. 'PRIMARY': This cluster serves as the replication source for secondary clusters that are replicating from it. Any data written to it is automatically replicated to its secondary clusters. It allows both reads and writes.
  ///
  /// 1. 'SECONDARY': This cluster replicates data from the primary cluster. It allows only reads. Possible values: ["CLUSTER_ROLE_UNSPECIFIED", "NONE", "PRIMARY", "SECONDARY"]
  final String clusterRole;

  /// An output only view of all the member clusters participating in cross cluster replication. This field is populated for all the member clusters irrespective of their cluster role.
  final List<GetClusterCrossClusterReplicationConfigMembership> memberships;

  /// Details of the primary cluster that is used as the replication source for this secondary cluster. This is allowed to be set only for clusters whose cluster role is of type 'SECONDARY'.
  final List<GetClusterCrossClusterReplicationConfigPrimaryCluster>
      primaryClusters;

  /// List of secondary clusters that are replicating from this primary cluster. This is allowed to be set only for clusters whose cluster role is of type 'PRIMARY'.
  final List<GetClusterCrossClusterReplicationConfigSecondaryCluster>
      secondaryClusters;

  /// The last time cross cluster replication config was updated.
  final String updateTime;

  /// Creates a new [GetClusterCrossClusterReplicationConfig].
  /// [clusterRole] The role of the cluster in cross cluster replication. Supported values are:
  /// [memberships] An output only view of all the member clusters participating in cross cluster replication. This field is populated for all the member clusters irrespective of their cluster role.
  /// [primaryClusters] Details of the primary cluster that is used as the replication source for this secondary cluster. This is allowed to be set only for clusters whose cluster role is of type 'SECONDARY'.
  /// [secondaryClusters] List of secondary clusters that are replicating from this primary cluster. This is allowed to be set only for clusters whose cluster role is of type 'PRIMARY'.
  /// [updateTime] The last time cross cluster replication config was updated.
  GetClusterCrossClusterReplicationConfig({
    required this.clusterRole,
    required this.memberships,
    required this.primaryClusters,
    required this.secondaryClusters,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterRole'] = clusterRole;
    map['memberships'] = pulumi.Input.encodeList<
        GetClusterCrossClusterReplicationConfigMembership,
        Map<String, dynamic>>(memberships, (value) => value.toMap());
    map['primaryClusters'] = pulumi.Input.encodeList<
        GetClusterCrossClusterReplicationConfigPrimaryCluster,
        Map<String, dynamic>>(primaryClusters, (value) => value.toMap());
    map['secondaryClusters'] = pulumi.Input.encodeList<
        GetClusterCrossClusterReplicationConfigSecondaryCluster,
        Map<String, dynamic>>(secondaryClusters, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetClusterCrossClusterReplicationConfig.fromMap(
      Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfig(
      clusterRole: map['clusterRole'] as String,
      memberships: pulumi.Input.decodeList<
              GetClusterCrossClusterReplicationConfigMembership>(
          map['memberships'],
          (value) => GetClusterCrossClusterReplicationConfigMembership.fromMap(
              (value as Map).cast<String, dynamic>())),
      primaryClusters: pulumi.Input.decodeList<
              GetClusterCrossClusterReplicationConfigPrimaryCluster>(
          map['primaryClusters'],
          (value) =>
              GetClusterCrossClusterReplicationConfigPrimaryCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secondaryClusters: pulumi.Input.decodeList<
              GetClusterCrossClusterReplicationConfigSecondaryCluster>(
          map['secondaryClusters'],
          (value) =>
              GetClusterCrossClusterReplicationConfigSecondaryCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
