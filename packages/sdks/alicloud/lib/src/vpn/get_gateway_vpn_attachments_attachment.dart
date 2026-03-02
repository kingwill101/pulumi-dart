// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_vpn_attachments_attachment_bgp_config.dart';
import 'get_gateway_vpn_attachments_attachment_health_check_config.dart';
import 'get_gateway_vpn_attachments_attachment_ike_config.dart';
import 'get_gateway_vpn_attachments_attachment_ipsec_config.dart';
import 'get_gateway_vpn_attachments_attachment_tunnel_options_specification.dart';

class GetGatewayVpnAttachmentsAttachment {
  /// attach type- **CEN**: indicates that the IPsec-VPN connection is associated with a transit router of a Cloud Enterprise Network (CEN) instance.- **NO_ASSOCIATED**: indicates that the IPsec-VPN connection is not associated with any resource.
  final pulumi.Input<String> attachType;
  /// Bgp configuration information.- This parameter is supported when you create an vpn attachment in single-tunnel mode.
  final pulumi.Input<List<GetGatewayVpnAttachmentsAttachmentBgpConfig>> bgpConfigs;
  /// IPsec connection status- **ike_sa_not_established**: Phase 1 negotiations failed.- **ike_sa_established**: Phase 1 negotiations succeeded.- **ipsec_sa_not_established**: Phase 2 negotiations failed.- **ipsec_sa_established**: Phase 2 negotiations succeeded.
  final pulumi.Input<String> connectionStatus;
  /// The creation time of the resource
  final pulumi.Input<String> createTime;
  /// The ID of the user gateway associated with the tunnel.> This parameter is required when creating a dual-tunnel mode IPsec-VPN connection.
  final pulumi.Input<String> customerGatewayId;
  /// Specifies whether to immediately start IPsec negotiations after the configuration takes effect. Valid values:- **true**: immediately starts IPsec negotiations after the configuration is complete.- **false** (default): starts IPsec negotiations when inbound traffic is received.
  final pulumi.Input<bool> effectImmediately;
  /// Whether the DPD (peer alive detection) function is enabled for the tunnel. Value:-**true** (default): enable the DPD function. IPsec initiator will send DPD message to check whether the peer device is alive. If the peer device does not receive a correct response within the set time, it is considered that the peer has been disconnected. IPsec will delete ISAKMP SA and the corresponding IPsec SA, and the security tunnel will also be deleted.-**false**: If the DPD function is disabled, the IPsec initiator does not send DPD detection packets.
  final pulumi.Input<bool> enableDpd;
  /// Whether the NAT crossing function is enabled for the tunnel. Value:-**true** (default): Enables the NAT Traversal function. When enabled, the IKE negotiation process deletes the verification process of the UDP port number and realizes the discovery function of the NAT gateway device in the tunnel.-**false**: does not enable the NAT Traversal function.
  final pulumi.Input<bool> enableNatTraversal;
  /// You can configure this parameter when you create a vpn attachment in dual-tunnel mode.Whether to enable the BGP function for the tunnel. Value: **true** or **false** (default).> before adding BGP configuration, we recommend that you understand the working mechanism and usage restrictions of the BGP dynamic routing function.
  final pulumi.Input<bool> enableTunnelsBgp;
  /// This parameter is supported if you create an vpn attachment in single-tunnel mode.Health check configuration information.
  final pulumi.Input<List<GetGatewayVpnAttachmentsAttachmentHealthCheckConfig>> healthCheckConfigs;
  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;
  /// The configurations of Phase 1 negotiations. - This parameter is supported if you create an vpn attachment in single-tunnel mode.
  final pulumi.Input<List<GetGatewayVpnAttachmentsAttachmentIkeConfig>> ikeConfigs;
  /// The local internet IP in Tunnel.
  final pulumi.Input<String> internetIp;
  /// Configuration negotiated in the second stage. - This parameter is supported if you create an vpn attachment in single-tunnel mode.
  final pulumi.Input<List<GetGatewayVpnAttachmentsAttachmentIpsecConfig>> ipsecConfigs;
  /// The CIDR block on the VPC side. The CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.1.0/24,192.168.2.0/24.The following routing modes are supported:- If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.- If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  final pulumi.Input<String> localSubnet;
  /// network type- **public** (default)- **private**
  final pulumi.Input<String> networkType;
  /// The CIDR block on the data center side. This CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.3.0/24,192.168.4.0/24.The following routing modes are supported:- If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.- If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  final pulumi.Input<String> remoteSubnet;
  /// The ID of the resource group
  final pulumi.Input<String> resourceGroupId;
  /// The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  final pulumi.Input<String> status;
  /// Tags
  final pulumi.Input<Map<String, String>> tags;
  /// Configure the tunnel.-You can configure parameters in the **tunnel_options_specification** array when you create a vpn attachment in dual-tunnel mode.-When creating a vpn attachment in dual-tunnel mode, you must add both tunnels for the vpn attachment to ensure that the vpn attachment has link redundancy. Only two tunnels can be added to a vpn attachment.
  final pulumi.Input<List<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification>> tunnelOptionsSpecifications;
  /// vpn attachment name
  final pulumi.Input<String> vpnAttachmentName;
  /// The first ID of the resource
  final pulumi.Input<String> vpnConnectionId;

  /// Creates a new [GetGatewayVpnAttachmentsAttachment].
  /// [attachType] attach type- **CEN**: indicates that the IPsec-VPN connection is associated with a transit router of a Cloud Enterprise Network (CEN) instance.- **NO_ASSOCIATED**: indicates that the IPsec-VPN connection is not associated with any resource.
  /// [bgpConfigs] Bgp configuration information.- This parameter is supported when you create an vpn attachment in single-tunnel mode.
  /// [connectionStatus] IPsec connection status- **ike_sa_not_established**: Phase 1 negotiations failed.- **ike_sa_established**: Phase 1 negotiations succeeded.- **ipsec_sa_not_established**: Phase 2 negotiations failed.- **ipsec_sa_established**: Phase 2 negotiations succeeded.
  /// [createTime] The creation time of the resource
  /// [customerGatewayId] The ID of the user gateway associated with the tunnel.> This parameter is required when creating a dual-tunnel mode IPsec-VPN connection.
  /// [effectImmediately] Specifies whether to immediately start IPsec negotiations after the configuration takes effect. Valid values:- **true**: immediately starts IPsec negotiations after the configuration is complete.- **false** (default): starts IPsec negotiations when inbound traffic is received.
  /// [enableDpd] Whether the DPD (peer alive detection) function is enabled for the tunnel. Value:-**true** (default): enable the DPD function. IPsec initiator will send DPD message to check whether the peer device is alive. If the peer device does not receive a correct response within the set time, it is considered that the peer has been disconnected. IPsec will delete ISAKMP SA and the corresponding IPsec SA, and the security tunnel will also be deleted.-**false**: If the DPD function is disabled, the IPsec initiator does not send DPD detection packets.
  /// [enableNatTraversal] Whether the NAT crossing function is enabled for the tunnel. Value:-**true** (default): Enables the NAT Traversal function. When enabled, the IKE negotiation process deletes the verification process of the UDP port number and realizes the discovery function of the NAT gateway device in the tunnel.-**false**: does not enable the NAT Traversal function.
  /// [enableTunnelsBgp] You can configure this parameter when you create a vpn attachment in dual-tunnel mode.Whether to enable the BGP function for the tunnel. Value: **true** or **false** (default).> before adding BGP configuration, we recommend that you understand the working mechanism and usage restrictions of the BGP dynamic routing function.
  /// [healthCheckConfigs] This parameter is supported if you create an vpn attachment in single-tunnel mode.Health check configuration information.
  /// [id] The ID of the resource supplied above.
  /// [ikeConfigs] The configurations of Phase 1 negotiations. - This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// [internetIp] The local internet IP in Tunnel.
  /// [ipsecConfigs] Configuration negotiated in the second stage. - This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// [localSubnet] The CIDR block on the VPC side. The CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.1.0/24,192.168.2.0/24.The following routing modes are supported:- If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.- If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  /// [networkType] network type- **public** (default)- **private**
  /// [remoteSubnet] The CIDR block on the data center side. This CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.3.0/24,192.168.4.0/24.The following routing modes are supported:- If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.- If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  /// [resourceGroupId] The ID of the resource group
  /// [status] The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  /// [tags] Tags
  /// [tunnelOptionsSpecifications] Configure the tunnel.-You can configure parameters in the **tunnel_options_specification** array when you create a vpn attachment in dual-tunnel mode.-When creating a vpn attachment in dual-tunnel mode, you must add both tunnels for the vpn attachment to ensure that the vpn attachment has link redundancy. Only two tunnels can be added to a vpn attachment.
  /// [vpnAttachmentName] vpn attachment name
  /// [vpnConnectionId] The first ID of the resource
  GetGatewayVpnAttachmentsAttachment({
    required this.attachType,
    required this.bgpConfigs,
    required this.connectionStatus,
    required this.createTime,
    required this.customerGatewayId,
    required this.effectImmediately,
    required this.enableDpd,
    required this.enableNatTraversal,
    required this.enableTunnelsBgp,
    required this.healthCheckConfigs,
    required this.id,
    required this.ikeConfigs,
    required this.internetIp,
    required this.ipsecConfigs,
    required this.localSubnet,
    required this.networkType,
    required this.remoteSubnet,
    required this.resourceGroupId,
    required this.status,
    required this.tags,
    required this.tunnelOptionsSpecifications,
    required this.vpnAttachmentName,
    required this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachType': attachType,
      'bgpConfigs': pulumi.Input.mapInputValue<List<GetGatewayVpnAttachmentsAttachmentBgpConfig>, List<Map<String, dynamic>>>(bgpConfigs, (value) => pulumi.Input.encodeList<GetGatewayVpnAttachmentsAttachmentBgpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'connectionStatus': connectionStatus,
      'createTime': createTime,
      'customerGatewayId': customerGatewayId,
      'effectImmediately': effectImmediately,
      'enableDpd': enableDpd,
      'enableNatTraversal': enableNatTraversal,
      'enableTunnelsBgp': enableTunnelsBgp,
      'healthCheckConfigs': pulumi.Input.mapInputValue<List<GetGatewayVpnAttachmentsAttachmentHealthCheckConfig>, List<Map<String, dynamic>>>(healthCheckConfigs, (value) => pulumi.Input.encodeList<GetGatewayVpnAttachmentsAttachmentHealthCheckConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': id,
      'ikeConfigs': pulumi.Input.mapInputValue<List<GetGatewayVpnAttachmentsAttachmentIkeConfig>, List<Map<String, dynamic>>>(ikeConfigs, (value) => pulumi.Input.encodeList<GetGatewayVpnAttachmentsAttachmentIkeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'internetIp': internetIp,
      'ipsecConfigs': pulumi.Input.mapInputValue<List<GetGatewayVpnAttachmentsAttachmentIpsecConfig>, List<Map<String, dynamic>>>(ipsecConfigs, (value) => pulumi.Input.encodeList<GetGatewayVpnAttachmentsAttachmentIpsecConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSubnet': localSubnet,
      'networkType': networkType,
      'remoteSubnet': remoteSubnet,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'tags': tags,
      'tunnelOptionsSpecifications': pulumi.Input.mapInputValue<List<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification>, List<Map<String, dynamic>>>(tunnelOptionsSpecifications, (value) => pulumi.Input.encodeList<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAttachmentName': vpnAttachmentName,
      'vpnConnectionId': vpnConnectionId,
    };
  }

  factory GetGatewayVpnAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetGatewayVpnAttachmentsAttachment(
      attachType: (map['attachType'] as String).input(),
      bgpConfigs: (pulumi.Input.decodeList<GetGatewayVpnAttachmentsAttachmentBgpConfig>(map['bgpConfigs'], (value) => GetGatewayVpnAttachmentsAttachmentBgpConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      connectionStatus: (map['connectionStatus'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      customerGatewayId: (map['customerGatewayId'] as String).input(),
      effectImmediately: (map['effectImmediately'] as bool).input(),
      enableDpd: (map['enableDpd'] as bool).input(),
      enableNatTraversal: (map['enableNatTraversal'] as bool).input(),
      enableTunnelsBgp: (map['enableTunnelsBgp'] as bool).input(),
      healthCheckConfigs: (pulumi.Input.decodeList<GetGatewayVpnAttachmentsAttachmentHealthCheckConfig>(map['healthCheckConfigs'], (value) => GetGatewayVpnAttachmentsAttachmentHealthCheckConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: (map['id'] as String).input(),
      ikeConfigs: (pulumi.Input.decodeList<GetGatewayVpnAttachmentsAttachmentIkeConfig>(map['ikeConfigs'], (value) => GetGatewayVpnAttachmentsAttachmentIkeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      internetIp: (map['internetIp'] as String).input(),
      ipsecConfigs: (pulumi.Input.decodeList<GetGatewayVpnAttachmentsAttachmentIpsecConfig>(map['ipsecConfigs'], (value) => GetGatewayVpnAttachmentsAttachmentIpsecConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localSubnet: (map['localSubnet'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      remoteSubnet: (map['remoteSubnet'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      tunnelOptionsSpecifications: (pulumi.Input.decodeList<GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification>(map['tunnelOptionsSpecifications'], (value) => GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnAttachmentName: (map['vpnAttachmentName'] as String).input(),
      vpnConnectionId: (map['vpnConnectionId'] as String).input(),
    );
  }
}

