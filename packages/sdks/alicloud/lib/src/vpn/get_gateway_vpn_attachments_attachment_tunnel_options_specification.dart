// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_vpn_attachments_attachment_tunnel_options_specification_tunnel_bgp_config.dart';
import 'get_gateway_vpn_attachments_attachment_tunnel_options_specification_tunnel_ike_config.dart';
import 'get_gateway_vpn_attachments_attachment_tunnel_options_specification_tunnel_ipsec_config.dart';

class GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification {
  /// The ID of the user gateway associated with the tunnel.&gt; This parameter is required when creating a dual-tunnel mode IPsec-VPN connection.
  final pulumi.Input<String> customerGatewayId;
  /// Whether the DPD (peer alive detection) function is enabled for the tunnel. Value:-**true** (default): enable the DPD function. IPsec initiator will send DPD message to check whether the peer device is alive. If the peer device does not receive a correct response within the set time, it is considered that the peer has been disconnected. IPsec will delete ISAKMP SA and the corresponding IPsec SA, and the security tunnel will also be deleted.-**false**: If the DPD function is disabled, the IPsec initiator does not send DPD detection packets.
  final pulumi.Input<bool> enableDpd;
  /// Whether the NAT crossing function is enabled for the tunnel. Value:-**true** (default): Enables the NAT Traversal function. When enabled, the IKE negotiation process deletes the verification process of the UDP port number and realizes the discovery function of the NAT gateway device in the tunnel.-**false**: does not enable the NAT Traversal function.
  final pulumi.Input<bool> enableNatTraversal;
  /// The local internet IP in Tunnel.
  final pulumi.Input<String> internetIp;
  /// The role of Tunnel.
  final pulumi.Input<String> role;
  /// The state of Tunnel.
  final pulumi.Input<String> state;
  /// The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  final pulumi.Input<String> status;
  /// Add the BGP configuration for the tunnel.&gt; After you enable the BGP function for IPsec connections (that is, specify **EnableTunnelsBgp** as **true**), you must configure this parameter.
  final pulumi.Input<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig> tunnelBgpConfig;
  /// The tunnel ID of IPsec-VPN connection.
  final pulumi.Input<String> tunnelId;
  /// Configuration information for the first phase negotiation.
  final pulumi.Input<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig> tunnelIkeConfig;
  /// The order in which the tunnel was created.-**1**: First tunnel.-**2**: The second tunnel.
  final pulumi.Input<int> tunnelIndex;
  /// Configuration information for the second-stage negotiation.
  final pulumi.Input<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig> tunnelIpsecConfig;
  /// The zoneNo of tunnel.
  final pulumi.Input<String> zoneNo;

  /// Creates a new [GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification].
  /// [customerGatewayId] The ID of the user gateway associated with the tunnel.&gt; This parameter is required when creating a dual-tunnel mode IPsec-VPN connection.
  /// [enableDpd] Whether the DPD (peer alive detection) function is enabled for the tunnel. Value:-**true** (default): enable the DPD function. IPsec initiator will send DPD message to check whether the peer device is alive. If the peer device does not receive a correct response within the set time, it is considered that the peer has been disconnected. IPsec will delete ISAKMP SA and the corresponding IPsec SA, and the security tunnel will also be deleted.-**false**: If the DPD function is disabled, the IPsec initiator does not send DPD detection packets.
  /// [enableNatTraversal] Whether the NAT crossing function is enabled for the tunnel. Value:-**true** (default): Enables the NAT Traversal function. When enabled, the IKE negotiation process deletes the verification process of the UDP port number and realizes the discovery function of the NAT gateway device in the tunnel.-**false**: does not enable the NAT Traversal function.
  /// [internetIp] The local internet IP in Tunnel.
  /// [role] The role of Tunnel.
  /// [state] The state of Tunnel.
  /// [status] The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  /// [tunnelBgpConfig] Add the BGP configuration for the tunnel.&gt; After you enable the BGP function for IPsec connections (that is, specify **EnableTunnelsBgp** as **true**), you must configure this parameter.
  /// [tunnelId] The tunnel ID of IPsec-VPN connection.
  /// [tunnelIkeConfig] Configuration information for the first phase negotiation.
  /// [tunnelIndex] The order in which the tunnel was created.-**1**: First tunnel.-**2**: The second tunnel.
  /// [tunnelIpsecConfig] Configuration information for the second-stage negotiation.
  /// [zoneNo] The zoneNo of tunnel.
  const GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification({
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
    required this.tunnelIndex,
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
      'tunnelBgpConfig': pulumi.Input.mapInputValue<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig, Map<String, dynamic>>(tunnelBgpConfig, (value) => value.toMap()),
      'tunnelId': tunnelId,
      'tunnelIkeConfig': pulumi.Input.mapInputValue<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig, Map<String, dynamic>>(tunnelIkeConfig, (value) => value.toMap()),
      'tunnelIndex': tunnelIndex,
      'tunnelIpsecConfig': pulumi.Input.mapInputValue<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig, Map<String, dynamic>>(tunnelIpsecConfig, (value) => value.toMap()),
      'zoneNo': zoneNo,
    };
  }

  factory GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification.fromMap(Map<String, dynamic> map) {
    return GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification(
      customerGatewayId: pulumi.Input.fromValue(map['customerGatewayId'] as String),
      enableDpd: pulumi.Input.fromValue(map['enableDpd'] as bool),
      enableNatTraversal: pulumi.Input.fromValue(map['enableNatTraversal'] as bool),
      internetIp: pulumi.Input.fromValue(map['internetIp'] as String),
      role: pulumi.Input.fromValue(map['role'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tunnelBgpConfig: pulumi.Input.fromValue(GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig.fromMap((map['tunnelBgpConfig']! as Map).cast<String, dynamic>())),
      tunnelId: pulumi.Input.fromValue(map['tunnelId'] as String),
      tunnelIkeConfig: pulumi.Input.fromValue(GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig.fromMap((map['tunnelIkeConfig']! as Map).cast<String, dynamic>())),
      tunnelIndex: pulumi.Input.fromValue(map['tunnelIndex'] as int),
      tunnelIpsecConfig: pulumi.Input.fromValue(GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig.fromMap((map['tunnelIpsecConfig']! as Map).cast<String, dynamic>())),
      zoneNo: pulumi.Input.fromValue(map['zoneNo'] as String),
    );
  }
}

