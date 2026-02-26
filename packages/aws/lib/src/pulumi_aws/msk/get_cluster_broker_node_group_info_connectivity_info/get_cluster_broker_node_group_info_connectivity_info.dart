// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_broker_node_group_info_connectivity_info_public_access/get_cluster_broker_node_group_info_connectivity_info_public_access.dart';
import '../get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity/get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity.dart';

class GetClusterBrokerNodeGroupInfoConnectivityInfo {
  final List<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>
      publicAccesses;
  final List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>
      vpcConnectivities;

  GetClusterBrokerNodeGroupInfoConnectivityInfo({
    required this.publicAccesses,
    required this.vpcConnectivities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicAccesses'] = Input.encodeList<
        GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess,
        Map<String, dynamic>>(publicAccesses, (value) => value.toMap());
    map['vpcConnectivities'] = Input.encodeList<
        GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity,
        Map<String, dynamic>>(vpcConnectivities, (value) => value.toMap());
    return map;
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(
      Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfo(
      publicAccesses: Input.decodeList<
              GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>(
          map['publicAccesses'],
          (value) =>
              GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap(
                  (value as Map).cast<String, dynamic>())),
      vpcConnectivities: Input.decodeList<
              GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>(
          map['vpcConnectivities'],
          (value) =>
              GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
