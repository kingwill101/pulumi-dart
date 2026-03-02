// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication.dart';

class GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity {
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication>> clientAuthentications;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity].
  /// [clientAuthentications] Required.
  GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity({
    required this.clientAuthentications,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuthentications': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication>, List<Map<String, dynamic>>>(clientAuthentications, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity(
      clientAuthentications: (pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication>(map['clientAuthentications'], (value) => GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

