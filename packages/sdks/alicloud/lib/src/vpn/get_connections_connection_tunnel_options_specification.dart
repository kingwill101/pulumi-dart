// ignore_for_file: unused_element, unnecessary_cast

import 'get_connections_connection_tunnel_options_specification_tunnel_bgp_config.dart';
import 'get_connections_connection_tunnel_options_specification_tunnel_ike_config.dart';
import 'get_connections_connection_tunnel_options_specification_tunnel_ipsec_config.dart';

class GetConnectionsConnectionTunnelOptionsSpecification {
  /// Use the VPN customer gateway ID as the search key.
  final String customerGatewayId;
  /// Wether enable Dpd detection.
  final bool enableDpd;
  /// enable nat traversal.
  final bool enableNatTraversal;
  final String internetIp;
  /// The role of Tunnel.
  final String role;
  final String state;
  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final String status;
  /// The bgp config of Tunnel.
  final GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig tunnelBgpConfig;
  final String tunnelId;
  /// The configuration of Phase 1 negotiations in Tunnel.
  final GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig tunnelIkeConfig;
  /// IPsec configuration in Tunnel.
  final GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig tunnelIpsecConfig;
  final String zoneNo;

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
      'tunnelBgpConfig': tunnelBgpConfig.toMap(),
      'tunnelId': tunnelId,
      'tunnelIkeConfig': tunnelIkeConfig.toMap(),
      'tunnelIpsecConfig': tunnelIpsecConfig.toMap(),
      'zoneNo': zoneNo,
    };
  }

  factory GetConnectionsConnectionTunnelOptionsSpecification.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionTunnelOptionsSpecification(
      customerGatewayId: map['customerGatewayId'] as String,
      enableDpd: map['enableDpd'] as bool,
      enableNatTraversal: map['enableNatTraversal'] as bool,
      internetIp: map['internetIp'] as String,
      role: map['role'] as String,
      state: map['state'] as String,
      status: map['status'] as String,
      tunnelBgpConfig: GetConnectionsConnectionTunnelOptionsSpecificationTunnelBgpConfig.fromMap((map['tunnelBgpConfig'] as Map).cast<String, dynamic>()),
      tunnelId: map['tunnelId'] as String,
      tunnelIkeConfig: GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap((map['tunnelIkeConfig'] as Map).cast<String, dynamic>()),
      tunnelIpsecConfig: GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig.fromMap((map['tunnelIpsecConfig'] as Map).cast<String, dynamic>()),
      zoneNo: map['zoneNo'] as String,
    );
  }
}

