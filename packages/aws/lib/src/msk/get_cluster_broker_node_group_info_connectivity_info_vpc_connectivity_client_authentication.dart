// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication_sasl.dart';

class GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication {
  final List<
          GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl>
      sasls;
  final bool tls;

  /// Creates a new [GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication].
  /// [sasls] Required.
  /// [tls] Required.
  GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication({
    required this.sasls,
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sasls'] = pulumi.Input.encodeList<
        GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl,
        Map<String, dynamic>>(sasls, (value) => value.toMap());
    map['tls'] = tls;
    return map;
  }

  factory GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication.fromMap(
      Map<String, dynamic> map) {
    return GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication(
      sasls: pulumi.Input.decodeList<
              GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl>(
          map['sasls'],
          (value) =>
              GetClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl
                  .fromMap((value as Map).cast<String, dynamic>())),
      tls: map['tls'] as bool,
    );
  }
}
