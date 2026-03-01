// ignore_for_file: unused_element, unnecessary_cast

import 'connection_tunnel_options_specification_tunnel_bgp_config.dart';
import 'connection_tunnel_options_specification_tunnel_ike_config.dart';
import 'connection_tunnel_options_specification_tunnel_ipsec_config.dart';

class ConnectionTunnelOptionsSpecification {
  /// The ID of the customer gateway in Tunnel.
  final String? customerGatewayId;
  /// Wether enable Dpd detection.
  final bool? enableDpd;
  /// enable nat traversal.
  final bool? enableNatTraversal;
  /// The local internet IP in Tunnel.
  final String? internetIp;
  /// The role of Tunnel.
  final String? role;
  /// The state of Tunnel.
  final String? state;
  /// The negotiation status of Tunnel.
  final String? status;
  /// The bgp config of Tunnel. See `tunnel_bgp_config` below.
  final ConnectionTunnelOptionsSpecificationTunnelBgpConfig? tunnelBgpConfig;
  /// The tunnel ID of IPsec-VPN connection.
  final String? tunnelId;
  /// The configuration of Phase 1 negotiations in Tunnel. See `tunnel_ike_config` below.
  final ConnectionTunnelOptionsSpecificationTunnelIkeConfig? tunnelIkeConfig;
  /// IPsec configuration in Tunnel. See `tunnel_ipsec_config` below.
  final ConnectionTunnelOptionsSpecificationTunnelIpsecConfig? tunnelIpsecConfig;
  /// The zoneNo of tunnel.
  final String? zoneNo;

  /// Creates a new [ConnectionTunnelOptionsSpecification].
  /// [customerGatewayId] The ID of the customer gateway in Tunnel.
  /// [enableDpd] Wether enable Dpd detection.
  /// [enableNatTraversal] enable nat traversal.
  /// [internetIp] The local internet IP in Tunnel.
  /// [role] The role of Tunnel.
  /// [state] The state of Tunnel.
  /// [status] The negotiation status of Tunnel.
  /// [tunnelBgpConfig] The bgp config of Tunnel. See `tunnel_bgp_config` below.
  /// [tunnelId] The tunnel ID of IPsec-VPN connection.
  /// [tunnelIkeConfig] The configuration of Phase 1 negotiations in Tunnel. See `tunnel_ike_config` below.
  /// [tunnelIpsecConfig] IPsec configuration in Tunnel. See `tunnel_ipsec_config` below.
  /// [zoneNo] The zoneNo of tunnel.
  ConnectionTunnelOptionsSpecification({
    this.customerGatewayId,
    this.enableDpd,
    this.enableNatTraversal,
    this.internetIp,
    this.role,
    this.state,
    this.status,
    this.tunnelBgpConfig,
    this.tunnelId,
    this.tunnelIkeConfig,
    this.tunnelIpsecConfig,
    this.zoneNo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerGatewayId': ?customerGatewayId,
      'enableDpd': ?enableDpd,
      'enableNatTraversal': ?enableNatTraversal,
      'internetIp': ?internetIp,
      'role': ?role,
      'state': ?state,
      'status': ?status,
      'tunnelBgpConfig': ?tunnelBgpConfig == null ? null : tunnelBgpConfig!.toMap(),
      'tunnelId': ?tunnelId,
      'tunnelIkeConfig': ?tunnelIkeConfig == null ? null : tunnelIkeConfig!.toMap(),
      'tunnelIpsecConfig': ?tunnelIpsecConfig == null ? null : tunnelIpsecConfig!.toMap(),
      'zoneNo': ?zoneNo,
    };
  }

  factory ConnectionTunnelOptionsSpecification.fromMap(Map<String, dynamic> map) {
    return ConnectionTunnelOptionsSpecification(
      customerGatewayId: map['customerGatewayId'] == null ? null : map['customerGatewayId'] as String,
      enableDpd: map['enableDpd'] == null ? null : map['enableDpd'] as bool,
      enableNatTraversal: map['enableNatTraversal'] == null ? null : map['enableNatTraversal'] as bool,
      internetIp: map['internetIp'] == null ? null : map['internetIp'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tunnelBgpConfig: map['tunnelBgpConfig'] == null ? null : ConnectionTunnelOptionsSpecificationTunnelBgpConfig.fromMap((map['tunnelBgpConfig'] as Map).cast<String, dynamic>()),
      tunnelId: map['tunnelId'] == null ? null : map['tunnelId'] as String,
      tunnelIkeConfig: map['tunnelIkeConfig'] == null ? null : ConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap((map['tunnelIkeConfig'] as Map).cast<String, dynamic>()),
      tunnelIpsecConfig: map['tunnelIpsecConfig'] == null ? null : ConnectionTunnelOptionsSpecificationTunnelIpsecConfig.fromMap((map['tunnelIpsecConfig'] as Map).cast<String, dynamic>()),
      zoneNo: map['zoneNo'] == null ? null : map['zoneNo'] as String,
    );
  }
}

