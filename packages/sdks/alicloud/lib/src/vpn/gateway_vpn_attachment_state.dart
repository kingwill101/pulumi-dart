// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_vpn_attachment_bgp_config.dart';
import 'gateway_vpn_attachment_health_check_config.dart';
import 'gateway_vpn_attachment_ike_config.dart';
import 'gateway_vpn_attachment_ipsec_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification.dart';

/// Input properties used for looking up and filtering GatewayVpnAttachment resources.
class GatewayVpnAttachmentState {
  /// Bgp configuration information.
  /// - This parameter is supported when you create an vpn attachment in single-tunnel mode. See `bgp_config` below.
  final pulumi.Input<GatewayVpnAttachmentBgpConfig>? bgpConfig;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// Customer gateway ID.
  /// - This parameter is required when creating a single-tunnel mode vpn attachment.
  final pulumi.Input<String>? customerGatewayId;
  /// Specifies whether to immediately start IPsec negotiations after the configuration takes effect. Valid values:
  final pulumi.Input<bool>? effectImmediately;
  /// This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// Whether to enable the DPD (peer survival detection) function.
  /// - true (default): enables DPD. The initiator of the IPsec-VPN connection sends DPD packets to check the existence and availability of the peer. If no feedback is received from the peer within the specified period of time, the connection fails. In this case, ISAKMP SA and IPsec SA are deleted along with the security tunnel.
  /// - false: disables DPD. The initiator of the IPsec-VPN connection does not send DPD packets.
  final pulumi.Input<bool>? enableDpd;
  /// This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// Specifies whether to enable NAT traversal. Valid values:
  /// - true (default): enables NAT traversal. After NAT traversal is enabled, the initiator does not check the UDP ports during IKE negotiations and can automatically discover NAT gateway devices along the vpn attachment tunnel.
  /// - false: disables NAT traversal.
  final pulumi.Input<bool>? enableNatTraversal;
  /// You can configure this parameter when you create a vpn attachment in dual-tunnel mode.Whether to enable the BGP function for the tunnel. Value: `true` or `false` (default).
  ///
  /// &gt; **NOTE:**  before adding BGP configuration, we recommend that you understand the working mechanism and usage restrictions of the BGP dynamic routing function.
  final pulumi.Input<bool>? enableTunnelsBgp;
  /// This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// Health check configuration information. See `health_check_config` below.
  final pulumi.Input<GatewayVpnAttachmentHealthCheckConfig>? healthCheckConfig;
  /// The configurations of Phase 1 negotiations.
  /// - This parameter is supported if you create an vpn attachment in single-tunnel mode. See `ike_config` below.
  final pulumi.Input<GatewayVpnAttachmentIkeConfig>? ikeConfig;
  /// Configuration negotiated in the second stage.
  /// - This parameter is supported if you create an vpn attachment in single-tunnel mode. See `ipsec_config` below.
  final pulumi.Input<GatewayVpnAttachmentIpsecConfig>? ipsecConfig;
  /// The CIDR block on the VPC side. The CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.1.0/24,192.168.2.0/24.The following routing modes are supported:
  /// - If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.
  /// - If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  final pulumi.Input<String>? localSubnet;
  /// network type
  final pulumi.Input<String>? networkType;
  /// The CIDR block on the data center side. This CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.3.0/24,192.168.4.0/24.The following routing modes are supported:
  /// - If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.
  /// - If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  final pulumi.Input<String>? remoteSubnet;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// The negotiation status of Tunnel.
  final pulumi.Input<String>? status;
  /// Tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Configure the tunnel.
  /// - You can configure parameters in the `tunnel_options_specification` array when you create a vpn attachment in dual-tunnel mode.
  /// - When creating a vpn attachment in dual-tunnel mode, you must add both tunnels for the vpn attachment to ensure that the vpn attachment has link redundancy. Only two tunnels can be added to a vpn attachment. See `tunnel_options_specification` below.
  final pulumi.Input<List<GatewayVpnAttachmentTunnelOptionsSpecification>>? tunnelOptionsSpecifications;
  /// vpn attachment name
  final pulumi.Input<String>? vpnAttachmentName;

  /// Creates a new [GatewayVpnAttachmentState].
  /// [bgpConfig] Bgp configuration information.
  /// [createTime] The creation time of the resource
  /// [customerGatewayId] Customer gateway ID.
  /// [effectImmediately] Specifies whether to immediately start IPsec negotiations after the configuration takes effect. Valid values:
  /// [enableDpd] This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// [enableNatTraversal] This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// [enableTunnelsBgp] You can configure this parameter when you create a vpn attachment in dual-tunnel mode.Whether to enable the BGP function for the tunnel. Value: `true` or `false` (default).
  /// [healthCheckConfig] This parameter is supported if you create an vpn attachment in single-tunnel mode.
  /// [ikeConfig] The configurations of Phase 1 negotiations.
  /// [ipsecConfig] Configuration negotiated in the second stage.
  /// [localSubnet] The CIDR block on the VPC side. The CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.1.0/24,192.168.2.0/24.The following routing modes are supported:
  /// [networkType] network type
  /// [remoteSubnet] The CIDR block on the data center side. This CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.3.0/24,192.168.4.0/24.The following routing modes are supported:
  /// [resourceGroupId] The ID of the resource group
  /// [status] The negotiation status of Tunnel.
  /// [tags] Tags
  /// [tunnelOptionsSpecifications] Configure the tunnel.
  /// [vpnAttachmentName] vpn attachment name
  GatewayVpnAttachmentState({
    this.bgpConfig,
    this.createTime,
    this.customerGatewayId,
    this.effectImmediately,
    this.enableDpd,
    this.enableNatTraversal,
    this.enableTunnelsBgp,
    this.healthCheckConfig,
    this.ikeConfig,
    this.ipsecConfig,
    this.localSubnet,
    this.networkType,
    this.remoteSubnet,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.tunnelOptionsSpecifications,
    this.vpnAttachmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentBgpConfig, Map<String, dynamic>>(bgpConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'customerGatewayId': ?customerGatewayId,
      'effectImmediately': ?effectImmediately,
      'enableDpd': ?enableDpd,
      'enableNatTraversal': ?enableNatTraversal,
      'enableTunnelsBgp': ?enableTunnelsBgp,
      'healthCheckConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'ikeConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentIkeConfig, Map<String, dynamic>>(ikeConfig, (value) => value.toMap()),
      'ipsecConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentIpsecConfig, Map<String, dynamic>>(ipsecConfig, (value) => value.toMap()),
      'localSubnet': ?localSubnet,
      'networkType': ?networkType,
      'remoteSubnet': ?remoteSubnet,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'tunnelOptionsSpecifications': ?pulumi.Input.mapOptionalInputValue<List<GatewayVpnAttachmentTunnelOptionsSpecification>, List<Map<String, dynamic>>>(tunnelOptionsSpecifications, (value) => pulumi.Input.encodeList<GatewayVpnAttachmentTunnelOptionsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAttachmentName': ?vpnAttachmentName,
    };
  }

  factory GatewayVpnAttachmentState.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentState(
      bgpConfig: (() { final guardedValue = map['bgpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpnAttachmentBgpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerGatewayId: (() { final guardedValue = map['customerGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectImmediately: (() { final guardedValue = map['effectImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDpd: (() { final guardedValue = map['enableDpd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNatTraversal: (() { final guardedValue = map['enableNatTraversal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTunnelsBgp: (() { final guardedValue = map['enableTunnelsBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckConfig: (() { final guardedValue = map['healthCheckConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpnAttachmentHealthCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ikeConfig: (() { final guardedValue = map['ikeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpnAttachmentIkeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipsecConfig: (() { final guardedValue = map['ipsecConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GatewayVpnAttachmentIpsecConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localSubnet: (() { final guardedValue = map['localSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteSubnet: (() { final guardedValue = map['remoteSubnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tunnelOptionsSpecifications: (() { final guardedValue = map['tunnelOptionsSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GatewayVpnAttachmentTunnelOptionsSpecification>(guardedValue, (value) => GatewayVpnAttachmentTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnAttachmentName: (() { final guardedValue = map['vpnAttachmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

