// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication/get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication.dart';

class GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity {
  final List<
          GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication>
      clientAuthentications;

  GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity({
    required this.clientAuthentications,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientAuthentications'] = Input.encodeList<
        GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication,
        Map<String, dynamic>>(clientAuthentications, (value) => value.toMap());
    return map;
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap(
      Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity(
      clientAuthentications: Input.decodeList<
              GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication>(
          map['clientAuthentications'],
          (value) =>
              GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
