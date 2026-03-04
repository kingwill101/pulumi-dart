// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connections_connection_tunnel_options_specification_tunnel_bgp_config.dart';
import 'get_connections_connection_tunnel_options_specification_tunnel_ike_config.dart';
import 'get_connections_connection_tunnel_options_specification_tunnel_ipsec_config.dart';

class GetConnectionsConnectionTunnelOptionsSpecification {
  /// Use the VPN customer gateway ID as the search key.
  final pulumi.Input<String> customerGatewayId;

  /// Wether enable Dpd detection.
  final pulumi.Input<bool> enableDpd;

  /// enable nat traversal.
  final pulumi.Input<bool> enableNatTraversal;
  final pulumi.Input<String> internetIp;

  /// The role of Tunnel.
  final pulumi.Input<String> role;
  final pulumi.Input<String> state;

  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final pulumi.Input<String> status;

  /// The bgp config of Tunnel.
  final pulumi.Input<
    GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig
  >
  tunnelBgpConfig;
  final pulumi.Input<String> tunnelId;

  /// The configuration of Phase 1 negotiations in Tunnel.
  final pulumi.Input<
    GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig
  >
  tunnelIkeConfig;

  /// IPsec configuration in Tunnel.
  final pulumi.Input<
    GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig
  >
  tunnelIpsecConfig;
  final pulumi.Input<String> zoneNo;

  /// Creates a new [GetConnectionsConnectionTunnelOptionsSpecification].
  /// [customerGatewayId] Use the VPN customer gateway ID as the search key.
  /// [enableDpd] Wether enable Dpd detection.
  /// [enableNatTraversal] enable nat traversal.
  /// [internetIp] Required.
  /// [role] The role of Tunnel.
  /// [state] Required.
  /// [status] The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  /// [tunnelBgpConfig] The bgp config of Tunnel.
  /// [tunnelId] Required.
  /// [tunnelIkeConfig] The configuration of Phase 1 negotiations in Tunnel.
  /// [tunnelIpsecConfig] IPsec configuration in Tunnel.
  /// [zoneNo] Required.
  GetConnectionsConnectionTunnelOptionsSpecification({
    required this.customerGatewayId,
    required this.enableDpd,
    required this.enableNatTraversal,
    required this.internetIp,
    required this.role,
    required this.state,
    required this.status,
    required this.tunnelBgpConfig,
    required this.tunnelId,
    required this.tunnelIkeConfig,
    required this.tunnelIpsecConfig,
    required this.zoneNo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerGatewayId': customerGatewayId,
      'enableDpd': enableDpd,
      'enableNatTraversal': enableNatTraversal,
      'internetIp': internetIp,
      'role': role,
      'state': state,
      'status': status,
      'tunnelBgpConfig':
          pulumi.Input.mapInputValue<
            GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig,
            Map<String, dynamic>
          >(tunnelBgpConfig, (value) => value.toMap()),
      'tunnelId': tunnelId,
      'tunnelIkeConfig':
          pulumi.Input.mapInputValue<
            GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig,
            Map<String, dynamic>
          >(tunnelIkeConfig, (value) => value.toMap()),
      'tunnelIpsecConfig':
          pulumi.Input.mapInputValue<
            GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig,
            Map<String, dynamic>
          >(tunnelIpsecConfig, (value) => value.toMap()),
      'zoneNo': zoneNo,
    };
  }

  factory GetConnectionsConnectionTunnelOptionsSpecification.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectionsConnectionTunnelOptionsSpecification(
      customerGatewayId: pulumi.Input.fromValue(
        map['customerGatewayId'] as String,
      ),
      enableDpd: pulumi.Input.fromValue(map['enableDpd'] as bool),
      enableNatTraversal: pulumi.Input.fromValue(
        map['enableNatTraversal'] as bool,
      ),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tunnelBgpConfig: pulumi.Input.fromValue(
        GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig.fromMap(
          (map['tunnelBgpConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
      tunnelIkeConfig: pulumi.Input.fromValue(
        GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap(
          (map['tunnelIkeConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      tunnelIpsecConfig: pulumi.Input.fromValue(
        GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig.fromMap(
          (map['tunnelIpsecConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      zoneNo: pulumi.Input.fromValue(map['zoneNo'] as String),
    );
  }
}
