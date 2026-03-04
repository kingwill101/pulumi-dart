// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_broker_node_group_info_connectivity_info_vpc_connectivity_client_authentication_sasl.dart';

class ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication {
  /// Configuration block for specifying SASL client authentication. See client_authentication sasl Argument Reference below.
  final pulumi.Input<
    ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl
  >?
  sasl;

  /// Configuration block for specifying TLS client authentication. See client_authentication tls Argument Reference below.
  final pulumi.Input<bool>? tls;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication].
  /// [sasl] Configuration block for specifying SASL client authentication. See client_authentication sasl Argument Reference below.
  /// [tls] Configuration block for specifying TLS client authentication. See client_authentication tls Argument Reference below.
  ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication({
    this.sasl,
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasl':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl,
            Map<String, dynamic>
          >(sasl, (value) => value.toMap()),
      'tls': ?tls,
    };
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthentication(
      sasl: (() {
        final guardedValue = map['sasl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterBrokerNodeGroupInfoConnectivityInfoVpcConnectivityClientAuthenticationSasl.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tls: (() {
        final guardedValue = map['tls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
