// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_tunnel_options_specification_tunnel_bgp_config.dart';
import 'connection_tunnel_options_specification_tunnel_ike_config.dart';
import 'connection_tunnel_options_specification_tunnel_ipsec_config.dart';

class ConnectionTunnelOptionsSpecification {
  /// The ID of the customer gateway in Tunnel.
  final pulumi.Input<String>? customerGatewayId;
  /// Wether enable Dpd detection.
  final pulumi.Input<bool>? enableDpd;
  /// enable nat traversal.
  final pulumi.Input<bool>? enableNatTraversal;
  /// The local internet IP in Tunnel.
  final pulumi.Input<String>? internetIp;
  /// The role of Tunnel.
  final pulumi.Input<String>? role;
  /// The state of Tunnel.
  final pulumi.Input<String>? state;
  /// The negotiation status of Tunnel.
  final pulumi.Input<String>? status;
  /// The bgp config of Tunnel. See `tunnel_bgp_config` below.
  final pulumi.Input<ConnectionTunnelOptionsSpecificationTunnelBgpConfig>? tunnelBgpConfig;
  /// The tunnel ID of IPsec-VPN connection.
  final pulumi.Input<String>? tunnelId;
  /// The configuration of Phase 1 negotiations in Tunnel. See `tunnel_ike_config` below.
  final pulumi.Input<ConnectionTunnelOptionsSpecificationTunnelIkeConfig>? tunnelIkeConfig;
  /// IPsec configuration in Tunnel. See `tunnel_ipsec_config` below.
  final pulumi.Input<ConnectionTunnelOptionsSpecificationTunnelIpsecConfig>? tunnelIpsecConfig;
  /// The zoneNo of tunnel.
  final pulumi.Input<String>? zoneNo;

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
  const ConnectionTunnelOptionsSpecification({
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
      'tunnelBgpConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionTunnelOptionsSpecificationTunnelBgpConfig, Map<String, dynamic>>(tunnelBgpConfig, (value) => value.toMap()),
      'tunnelId': ?tunnelId,
      'tunnelIkeConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionTunnelOptionsSpecificationTunnelIkeConfig, Map<String, dynamic>>(tunnelIkeConfig, (value) => value.toMap()),
      'tunnelIpsecConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionTunnelOptionsSpecificationTunnelIpsecConfig, Map<String, dynamic>>(tunnelIpsecConfig, (value) => value.toMap()),
      'zoneNo': ?zoneNo,
    };
  }

  factory ConnectionTunnelOptionsSpecification.fromMap(Map<String, dynamic> map) {
    return ConnectionTunnelOptionsSpecification(
      customerGatewayId: (() { final guardedValue = map['customerGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableDpd: (() { final guardedValue = map['enableDpd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNatTraversal: (() { final guardedValue = map['enableNatTraversal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internetIp: (() { final guardedValue = map['internetIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelBgpConfig: (() { final guardedValue = map['tunnelBgpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionTunnelOptionsSpecificationTunnelBgpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelIkeConfig: (() { final guardedValue = map['tunnelIkeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tunnelIpsecConfig: (() { final guardedValue = map['tunnelIpsecConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionTunnelOptionsSpecificationTunnelIpsecConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneNo: (() { final guardedValue = map['zoneNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

