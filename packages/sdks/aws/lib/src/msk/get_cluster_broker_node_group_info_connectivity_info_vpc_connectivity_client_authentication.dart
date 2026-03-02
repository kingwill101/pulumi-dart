// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication_sasl.dart';

class GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication {
  final pulumi.Input<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl>> sasls;
  final pulumi.Input<bool> tls;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication].
  /// [sasls] Required.
  /// [tls] Required.
  GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication({
    required this.sasls,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasls': pulumi.Input.mapInputValue<List<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl>, List<Map<String, dynamic>>>(sasls, (value) => pulumi.Input.encodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tls': tls,
    };
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication.fromMap(Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication(
      sasls: (pulumi.Input.decodeList<GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl>(map['sasls'], (value) => GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tls: (map['tls'] as bool).input(),
    );
  }
}

