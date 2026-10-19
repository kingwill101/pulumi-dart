// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity {
  /// Client authentication information for VPC connectivity. See `vpc_connectivity.client_authentication` Block below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication?>? clientAuthentication;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity].
  /// [clientAuthentication] Client authentication information for VPC connectivity. See `vpc_connectivity.client_authentication` Block below.
  const ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity({
    this.clientAuthentication,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientAuthentication': ?pulumi.Input.mapOptionalInputValue<ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication, Map<String, dynamic>>(clientAuthentication, (value) => value.toMap()),
    };
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity(
      clientAuthentication: (() { final guardedValue = map['clientAuthentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
