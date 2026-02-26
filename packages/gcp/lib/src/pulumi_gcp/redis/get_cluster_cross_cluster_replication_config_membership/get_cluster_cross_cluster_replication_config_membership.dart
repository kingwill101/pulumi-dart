// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_cross_cluster_replication_config_membership_primary_cluster/get_cluster_cross_cluster_replication_config_membership_primary_cluster.dart';
import '../get_cluster_cross_cluster_replication_config_membership_secondary_cluster/get_cluster_cross_cluster_replication_config_membership_secondary_cluster.dart';

class GetClusterCrossClusterReplicationConfigMembership {
  /// Details of the primary cluster that is used as the replication source for all the secondary clusters.
  final List<GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster>
      primaryClusters;

  /// List of secondary clusters that are replicating from the primary cluster.
  final List<GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster>
      secondaryClusters;

  GetClusterCrossClusterReplicationConfigMembership({
    required this.primaryClusters,
    required this.secondaryClusters,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryClusters'] = Input.encodeList<
        GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster,
        Map<String, dynamic>>(primaryClusters, (value) => value.toMap());
    map['secondaryClusters'] = Input.encodeList<
        GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster,
        Map<String, dynamic>>(secondaryClusters, (value) => value.toMap());
    return map;
  }

  factory GetClusterCrossClusterReplicationConfigMembership.fromMap(
      Map<String, dynamic> map) {
    return GetClusterCrossClusterReplicationConfigMembership(
      primaryClusters: Input.decodeList<
              GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster>(
          map['primaryClusters'],
          (value) =>
              GetClusterCrossClusterReplicationConfigMembershipPrimaryCluster
                  .fromMap((value as Map).cast<String, dynamic>())),
      secondaryClusters: Input.decodeList<
              GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster>(
          map['secondaryClusters'],
          (value) =>
              GetClusterCrossClusterReplicationConfigMembershipSecondaryCluster
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
