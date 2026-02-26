// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication_sasl/cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication_sasl.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication {
  /// Configuration block for specifying SASL client authentication. See<span pulumi-lang-nodejs=" clientAuthentication " pulumi-lang-dotnet=" ClientAuthentication " pulumi-lang-go=" clientAuthentication " pulumi-lang-python=" client_authentication " pulumi-lang-yaml=" clientAuthentication " pulumi-lang-java=" clientAuthentication "> client_authentication </span>sasl Argument Reference below.
  final ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl?
      sasl;

  /// Configuration block for specifying TLS client authentication. See<span pulumi-lang-nodejs=" clientAuthentication " pulumi-lang-dotnet=" ClientAuthentication " pulumi-lang-go=" clientAuthentication " pulumi-lang-python=" client_authentication " pulumi-lang-yaml=" clientAuthentication " pulumi-lang-java=" clientAuthentication "> client_authentication </span>tls Argument Reference below.
  final bool? tls;

  ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication({
    this.sasl,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final saslValue = sasl;
    if (saslValue != null) {
      map['sasl'] = saslValue.toMap();
    }
    final tlsValue = tls;
    if (tlsValue != null) {
      map['tls'] = tlsValue;
    }
    return map;
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication(
      sasl: map['sasl'] == null
          ? null
          : ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl
              .fromMap((map['sasl'] as Map).cast<String, dynamic>()),
      tls: map['tls'] == null ? null : map['tls'] as bool,
    );
  }
}
