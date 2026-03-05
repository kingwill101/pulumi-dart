// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_bgp_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_ike_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_ipsec_config.dart';

class GatewayVpnAttachmentTunnelOptionsSpecification {
  /// The ID of the user gateway associated with the tunnel.
  ///
  /// &gt; **NOTE:**  This parameter is required when creating a dual-tunnel mode IPsec-VPN connection.
  final pulumi.Input<String> customerGatewayId;
  /// Whether the DPD (peer alive detection) function is enabled for the tunnel. Value:
  final pulumi.Input<bool>? enableDpd;
  /// Whether the NAT crossing function is enabled for the tunnel. Value:
  final pulumi.Input<bool>? enableNatTraversal;
  /// The local internet IP in Tunnel.
  final pulumi.Input<String>? internetIp;
  /// The role of Tunnel.
  final pulumi.Input<String>? role;
  /// The state of Tunnel.
  final pulumi.Input<String>? state;
  /// The negotiation status of Tunnel.
  final pulumi.Input<String>? status;
  /// Add the BGP configuration for the tunnel.
  ///
  /// &gt; **NOTE:**  After you enable the BGP function for IPsec connections (that is, specify `EnableTunnelsBgp` as `true`), you must configure this parameter.
  /// See `tunnel_bgp_config` below.
  final pulumi.Input<GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig>? tunnelBgpConfig;
  /// The tunnel ID of IPsec-VPN connection.
  final pulumi.Input<String>? tunnelId;
  /// Configuration information for the first phase negotiation. See `tunnel_ike_config` below.
  final pulumi.Input<GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig>? tunnelIkeConfig;
  /// The order in which the tunnel was created.
  final pulumi.Input<int> tunnelIndex;
  /// Configuration information for the second-stage negotiation. See `tunnel_ipsec_config` below.
  final pulumi.Input<GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig>? tunnelIpsecConfig;
  /// The zoneNo of tunnel.
  final pulumi.Input<String>? zoneNo;

  /// Creates a new [GatewayVpnAttachmentTunnelOptionsSpecification].
  /// [customerGatewayId] The ID of the user gateway associated with the tunnel.
  /// [enableDpd] Whether the DPD (peer alive detection) function is enabled for the tunnel. Value:
  /// [enableNatTraversal] Whether the NAT crossing function is enabled for the tunnel. Value:
  /// [internetIp] The local internet IP in Tunnel.
  /// [role] The role of Tunnel.
  /// [state] The state of Tunnel.
  /// [status] The negotiation status of Tunnel.
  /// [tunnelBgpConfig] Add the BGP configuration for the tunnel.
  /// [tunnelId] The tunnel ID of IPsec-VPN connection.
  /// [tunnelIkeConfig] Configuration information for the first phase negotiation. See `tunnel_ike_config` below.
  /// [tunnelIndex] The order in which the tunnel was created.
  /// [tunnelIpsecConfig] Configuration information for the second-stage negotiation. See `tunnel_ipsec_config` below.
  /// [zoneNo] The zoneNo of tunnel.
  GatewayVpnAttachmentTunnelOptionsSpecification({
    required this.customerGatewayId,
    this.enableDpd,
    this.enableNatTraversal,
    this.internetIp,
    this.role,
    this.state,
    this.status,
    this.tunnelBgpConfig,
    this.tunnelId,
    this.tunnelIkeConfig,
    required this.tunnelIndex,
    this.tunnelIpsecConfig,
    this.zoneNo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerGatewayId': customerGatewayId,
      'enableDpd': ?enableDpd,
      'enableNatTraversal': ?enableNatTraversal,
      'internetIp': ?internetIp,
      'role': ?role,
      'state': ?state,
      'status': ?status,
      'tunnelBgpConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig, Map<String, dynamic>>(tunnelBgpConfig, (value) => value.toMap()),
      'tunnelId': ?tunnelId,
      'tunnelIkeConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig, Map<String, dynamic>>(tunnelIkeConfig, (value) => value.toMap()),
      'tunnelIndex': tunnelIndex,
      'tunnelIpsecConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig, Map<String, dynamic>>(tunnelIpsecConfig, (value) => value.toMap()),
      'zoneNo': ?zoneNo,
    };
  }

  factory GatewayVpnAttachmentTunnelOptionsSpecification.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentTunnelOptionsSpecification(
      customerGatewayId: pulumi.Input.fromValue(map['customerGatewayId'] as String),
      enableDpd: (() { final guardedValue = map['enableDpd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNatTraversal: (() { final guardedValue = map['enableNatTraversal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      internetIp: (() { final guardedValue = map['internetIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelBgpConfig: (() { final guardedValue = map['tunnelBgpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tunnelId: (() { final guardedValue = map['tunnelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tunnelIkeConfig: (() { final guardedValue = map['tunnelIkeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tunnelIndex: pulumi.Input.fromValue(map['tunnelIndex'] as int),
      tunnelIpsecConfig: (() { final guardedValue = map['tunnelIpsecConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      zoneNo: (() { final guardedValue = map['zoneNo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

