// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication/cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity {
  /// Configuration block for specifying a client authentication. See<span pulumi-lang-nodejs=" clientAuthentication " pulumi-lang-dotnet=" ClientAuthentication " pulumi-lang-go=" clientAuthentication " pulumi-lang-python=" client_authentication " pulumi-lang-yaml=" clientAuthentication " pulumi-lang-java=" clientAuthentication "> client_authentication </span>Argument Reference below.
  final ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication?
      clientAuthentication;

  ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity({
    this.clientAuthentication,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientAuthenticationValue = clientAuthentication;
    if (clientAuthenticationValue != null) {
      map['clientAuthentication'] = clientAuthenticationValue.toMap();
    }
    return map;
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap(
      Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity(
      clientAuthentication: map['clientAuthentication'] == null
          ? null
          : ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication
              .fromMap(
                  (map['clientAuthentication'] as Map).cast<String, dynamic>()),
    );
  }
}
