// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_bgp_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_ike_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_ipsec_config.dart';

class GatewayVpnAttachmentTunnelOptionsSpecification {
  /// The ID of the user gateway associated with the tunnel.
  ///
  /// > **NOTE:**  This parameter is required when creating a dual-tunnel mode IPsec-VPN connection.
  final String customerGatewayId;
  /// Whether the DPD (peer alive detection) function is enabled for the tunnel. Value:
  final bool? enableDpd;
  /// Whether the NAT crossing function is enabled for the tunnel. Value:
  final bool? enableNatTraversal;
  /// The local internet IP in Tunnel.
  final String? internetIp;
  /// The role of Tunnel.
  final String? role;
  /// The state of Tunnel.
  final String? state;
  /// The negotiation status of Tunnel.
  final String? status;
  /// Add the BGP configuration for the tunnel.
  ///
  /// > **NOTE:**  After you enable the BGP function for IPsec connections (that is, specify `EnableTunnelsBgp` as `true`), you must configure this parameter.
  /// See `tunnel_bgp_config` below.
  final GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig? tunnelBgpConfig;
  /// The tunnel ID of IPsec-VPN connection.
  final String? tunnelId;
  /// Configuration information for the first phase negotiation. See `tunnel_ike_config` below.
  final GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig? tunnelIkeConfig;
  /// The order in which the tunnel was created.
  final int tunnelIndex;
  /// Configuration information for the second-stage negotiation. See `tunnel_ipsec_config` below.
  final GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig? tunnelIpsecConfig;
  /// The zoneNo of tunnel.
  final String? zoneNo;

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
      'tunnelBgpConfig': ?tunnelBgpConfig == null ? null : tunnelBgpConfig!.toMap(),
      'tunnelId': ?tunnelId,
      'tunnelIkeConfig': ?tunnelIkeConfig == null ? null : tunnelIkeConfig!.toMap(),
      'tunnelIndex': tunnelIndex,
      'tunnelIpsecConfig': ?tunnelIpsecConfig == null ? null : tunnelIpsecConfig!.toMap(),
      'zoneNo': ?zoneNo,
    };
  }

  factory GatewayVpnAttachmentTunnelOptionsSpecification.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentTunnelOptionsSpecification(
      customerGatewayId: map['customerGatewayId'] as String,
      enableDpd: map['enableDpd'] == null ? null : map['enableDpd'] as bool,
      enableNatTraversal: map['enableNatTraversal'] == null ? null : map['enableNatTraversal'] as bool,
      internetIp: map['internetIp'] == null ? null : map['internetIp'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tunnelBgpConfig: map['tunnelBgpConfig'] == null ? null : GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig.fromMap((map['tunnelBgpConfig'] as Map).cast<String, dynamic>()),
      tunnelId: map['tunnelId'] == null ? null : map['tunnelId'] as String,
      tunnelIkeConfig: map['tunnelIkeConfig'] == null ? null : GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig.fromMap((map['tunnelIkeConfig'] as Map).cast<String, dynamic>()),
      tunnelIndex: map['tunnelIndex'] as int,
      tunnelIpsecConfig: map['tunnelIpsecConfig'] == null ? null : GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig.fromMap((map['tunnelIpsecConfig'] as Map).cast<String, dynamic>()),
      zoneNo: map['zoneNo'] == null ? null : map['zoneNo'] as String,
    );
  }
}

