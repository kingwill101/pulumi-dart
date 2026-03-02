// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_bgp_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_ike_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification_tunnel_ipsec_config.dart';

class GatewayVpnAttachmentTunnelOptionsSpecification {
  /// The ID of the user gateway associated with the tunnel.
  ///
  /// > **NOTE:**  This parameter is required when creating a dual-tunnel mode IPsec-VPN connection.
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
  /// > **NOTE:**  After you enable the BGP function for IPsec connections (that is, specify `EnableTunnelsBgp` as `true`), you must configure this parameter.
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
      customerGatewayId: (map['customerGatewayId'] as String).input(),
      enableDpd: map['enableDpd'] == null ? null : (map['enableDpd']! as bool).input(),
      enableNatTraversal: map['enableNatTraversal'] == null ? null : (map['enableNatTraversal']! as bool).input(),
      internetIp: map['internetIp'] == null ? null : (map['internetIp']! as String).input(),
      role: map['role'] == null ? null : (map['role']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tunnelBgpConfig: map['tunnelBgpConfig'] == null ? null : (GatewayVpnAttachmentTunnelOptionsSpecificationTunnelBgpConfig.fromMap((map['tunnelBgpConfig']! as Map).cast<String, dynamic>())).input(),
      tunnelId: map['tunnelId'] == null ? null : (map['tunnelId']! as String).input(),
      tunnelIkeConfig: map['tunnelIkeConfig'] == null ? null : (GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig.fromMap((map['tunnelIkeConfig']! as Map).cast<String, dynamic>())).input(),
      tunnelIndex: (map['tunnelIndex'] as int).input(),
      tunnelIpsecConfig: map['tunnelIpsecConfig'] == null ? null : (GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig.fromMap((map['tunnelIpsecConfig']! as Map).cast<String, dynamic>())).input(),
      zoneNo: map['zoneNo'] == null ? null : (map['zoneNo']! as String).input(),
    );
  }
}

