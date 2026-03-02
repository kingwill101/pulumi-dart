// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_connectivity_info_public_access.dart';
import 'get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity.dart';

class GetClusterBrokerNodeGroupInfoConnectivityInfo {
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>> publicAccesses;
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>> vpcConnectivities;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfo].
  /// [publicAccesses] Required.
  /// [vpcConnectivities] Required.
  GetClusterBrokerNodeGroupInfoConnectivityInfo({
    required this.publicAccesses,
    required this.vpcConnectivities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicAccesses': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>, List<Map<String, dynamic>>>(publicAccesses, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcConnectivities': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>, List<Map<String, dynamic>>>(vpcConnectivities, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfo.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfo(
      publicAccesses: (pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess>(map['publicAccesses'], (value) => GetClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcConnectivities: (pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity>(map['vpcConnectivities'], (value) => GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

