// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_connectivity_info_public_access.dart';
import 'get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity.dart';

class GetClusterBrokerNodeGroupInfoConnectivityInfo {
  /// Network type of the cluster.
  final pulumi.Input<String> networkType;
  /// Public access configuration. See `publicAccess` Block for details.
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>> publicAccesses;
  /// VPC connectivity configuration. See `vpcConnectivity` Block for details.
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>> vpcConnectivities;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfo].
  /// [networkType] Network type of the cluster.
  /// [publicAccesses] Public access configuration. See `publicAccess` Block for details.
  /// [vpcConnectivities] VPC connectivity configuration. See `vpcConnectivity` Block for details.
  const GetClusterBrokerNodeGroupInfoConnectivityInfo({
    required this.networkType,
    required this.publicAccesses,
    required this.vpcConnectivities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkType': networkType,
      'publicAccesses': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>, List<Map<String, dynamic>>>(publicAccesses, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcConnectivities': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>, List<Map<String, dynamic>>>(vpcConnectivities, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfo(
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      publicAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>(map['publicAccesses']!, (value) => GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap((value as Map).cast<String, dynamic>()))),
      vpcConnectivities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>(map['vpcConnectivities']!, (value) => GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
