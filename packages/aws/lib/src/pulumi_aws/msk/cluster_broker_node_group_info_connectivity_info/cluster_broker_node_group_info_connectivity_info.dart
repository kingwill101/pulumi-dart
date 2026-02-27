// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_broker_node_group_info_connectivity_info_public_access/cluster_broker_node_group_info_connectivity_info_public_access.dart';
import '../cluster_broker_node_group_info_connectivity_info_vpc_connectivity/cluster_broker_node_group_info_connectivity_info_vpc_connectivity.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfo {
  /// Access control settings for brokers. See connectivity_info public_access Argument Reference below.
  final ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess? publicAccess;

  /// VPC connectivity access control for brokers. See connectivity_info vpc_connectivity Argument Reference below.
  final ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity?
      vpcConnectivity;

  ClusterBrokerNodeGroupInfoConnectivityInfo({
    this.publicAccess,
    this.vpcConnectivity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publicAccessValue = publicAccess;
    if (publicAccessValue != null) {
      map['publicAccess'] = publicAccessValue.toMap();
    }
    final vpcConnectivityValue = vpcConnectivity;
    if (vpcConnectivityValue != null) {
      map['vpcConnectivity'] = vpcConnectivityValue.toMap();
    }
    return map;
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfo(
      publicAccess: map['publicAccess'] == null
          ? null
          : ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap(
              (map['publicAccess'] as Map).cast<String, dynamic>()),
      vpcConnectivity: map['vpcConnectivity'] == null
          ? null
          : ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap(
              (map['vpcConnectivity'] as Map).cast<String, dynamic>()),
    );
  }
}
