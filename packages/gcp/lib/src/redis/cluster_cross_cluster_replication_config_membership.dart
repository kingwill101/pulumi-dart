// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cross_cluster_replication_config_membership_primary_cluster.dart';
import 'cluster_cross_cluster_replication_config_membership_secondary_cluster.dart';

class ClusterCrossClusterReplicationConfigMembership {
  /// Details of the primary cluster that is used as the replication source for all the secondary clusters.
  final List<ClusterCrossClusterReplicationConfigMembershipPrimaryCluster>?
  primaryClusters;

  /// List of secondary clusters that are replicating from the primary cluster.
  final List<ClusterCrossClusterReplicationConfigMembershipSecondaryCluster>?
  secondaryClusters;

  /// Creates a new [ClusterCrossClusterReplicationConfigMembership].
  /// [primaryClusters] Details of the primary cluster that is used as the replication source for all the secondary clusters.
  /// [secondaryClusters] List of secondary clusters that are replicating from the primary cluster.
  ClusterCrossClusterReplicationConfigMembership({
    this.primaryClusters,
    this.secondaryClusters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryClusters': ?primaryClusters == null
          ? null
          : pulumi.Input.encodeList<
              ClusterCrossClusterReplicationConfigMembershipPrimaryCluster,
              Map<String, dynamic>
            >(primaryClusters!, (value) => value.toMap()),
      'secondaryClusters': ?secondaryClusters == null
          ? null
          : pulumi.Input.encodeList<
              ClusterCrossClusterReplicationConfigMembershipSecondaryCluster,
              Map<String, dynamic>
            >(secondaryClusters!, (value) => value.toMap()),
    };
  }

  factory ClusterCrossClusterReplicationConfigMembership.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterCrossClusterReplicationConfigMembership(
      primaryClusters: map['primaryClusters'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterCrossClusterReplicationConfigMembershipPrimaryCluster
            >(
              map['primaryClusters'],
              (value) =>
                  ClusterCrossClusterReplicationConfigMembershipPrimaryCluster.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      secondaryClusters: map['secondaryClusters'] == null
          ? null
          : pulumi.Input.decodeList<
              ClusterCrossClusterReplicationConfigMembershipSecondaryCluster
            >(
              map['secondaryClusters'],
              (value) =>
                  ClusterCrossClusterReplicationConfigMembershipSecondaryCluster.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
