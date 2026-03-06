// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity {
  /// Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
  final pulumi.Input<ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication>? clientAuthentication;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivity].
  /// [clientAuthentication] Configuration block for specifying a client authentication. See client_authentication Argument Reference below.
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

