// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_vpn_attachment_bgp_config.dart';
import 'gateway_vpn_attachment_health_check_config.dart';
import 'gateway_vpn_attachment_ike_config.dart';
import 'gateway_vpn_attachment_ipsec_config.dart';
import 'gateway_vpn_attachment_tunnel_options_specification.dart';

/// {@template pulumi_vpn_gateway_vpn_attachment_gateway_vpn_attachment_args_doc}
/// The set of arguments for GatewayVpnAttachment.
/// {@endtemplate}
/// {@macro pulumi_vpn_gateway_vpn_attachment_gateway_vpn_attachment_args_doc}
class GatewayVpnAttachmentArgs {
  /// Bgp configuration information.
  /// - This parameter is supported when you create an vpn attachment in single-tunnel mode. See `bgp_config` below.
  final pulumi.Input<GatewayVpnAttachmentBgpConfig>? bgpConfig;
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
  /// > **NOTE:**  before adding BGP configuration, we recommend that you understand the working mechanism and usage restrictions of the BGP dynamic routing function.
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
  final pulumi.Input<String> localSubnet;
  /// network type
  final pulumi.Input<String>? networkType;
  /// The CIDR block on the data center side. This CIDR block is used in Phase 2 negotiations.Separate multiple CIDR blocks with commas (,). Example: 192.168.3.0/24,192.168.4.0/24.The following routing modes are supported:
  /// - If you set LocalSubnet and RemoteSubnet to 0.0.0.0/0, the routing mode of the IPsec-VPN connection is set to Destination Routing Mode.
  /// - If you set LocalSubnet and RemoteSubnet to specific CIDR blocks, the routing mode of the IPsec-VPN connection is set to Protected Data Flows.
  final pulumi.Input<String> remoteSubnet;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Tags
  final pulumi.Input<Map<String, String>>? tags;
  /// Configure the tunnel.
  /// - You can configure parameters in the `tunnel_options_specification` array when you create a vpn attachment in dual-tunnel mode.
  /// - When creating a vpn attachment in dual-tunnel mode, you must add both tunnels for the vpn attachment to ensure that the vpn attachment has link redundancy. Only two tunnels can be added to a vpn attachment. See `tunnel_options_specification` below.
  final pulumi.Input<List<GatewayVpnAttachmentTunnelOptionsSpecification>>? tunnelOptionsSpecifications;
  /// vpn attachment name
  final pulumi.Input<String>? vpnAttachmentName;

  /// Creates a new [GatewayVpnAttachmentArgs].
  /// [bgpConfig] Bgp configuration information.
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
  /// [tags] Tags
  /// [tunnelOptionsSpecifications] Configure the tunnel.
  /// [vpnAttachmentName] vpn attachment name
  GatewayVpnAttachmentArgs({
    GatewayVpnAttachmentBgpConfig? bgpConfig,
    String? customerGatewayId,
    bool? effectImmediately,
    bool? enableDpd,
    bool? enableNatTraversal,
    bool? enableTunnelsBgp,
    GatewayVpnAttachmentHealthCheckConfig? healthCheckConfig,
    GatewayVpnAttachmentIkeConfig? ikeConfig,
    GatewayVpnAttachmentIpsecConfig? ipsecConfig,
    required String localSubnet,
    String? networkType,
    required String remoteSubnet,
    String? resourceGroupId,
    Map<String, String>? tags,
    List<GatewayVpnAttachmentTunnelOptionsSpecification>? tunnelOptionsSpecifications,
    String? vpnAttachmentName,
  }) :
      bgpConfig = pulumi.Input.asOptionalInput<GatewayVpnAttachmentBgpConfig>(bgpConfig),
      customerGatewayId = pulumi.Input.asOptionalInput<String>(customerGatewayId),
      effectImmediately = pulumi.Input.asOptionalInput<bool>(effectImmediately),
      enableDpd = pulumi.Input.asOptionalInput<bool>(enableDpd),
      enableNatTraversal = pulumi.Input.asOptionalInput<bool>(enableNatTraversal),
      enableTunnelsBgp = pulumi.Input.asOptionalInput<bool>(enableTunnelsBgp),
      healthCheckConfig = pulumi.Input.asOptionalInput<GatewayVpnAttachmentHealthCheckConfig>(healthCheckConfig),
      ikeConfig = pulumi.Input.asOptionalInput<GatewayVpnAttachmentIkeConfig>(ikeConfig),
      ipsecConfig = pulumi.Input.asOptionalInput<GatewayVpnAttachmentIpsecConfig>(ipsecConfig),
      localSubnet = pulumi.Input.asInput<String>(localSubnet),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      remoteSubnet = pulumi.Input.asInput<String>(remoteSubnet),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tunnelOptionsSpecifications = pulumi.Input.asOptionalInput<List<GatewayVpnAttachmentTunnelOptionsSpecification>>(tunnelOptionsSpecifications),
      vpnAttachmentName = pulumi.Input.asOptionalInput<String>(vpnAttachmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentBgpConfig, Map<String, dynamic>>(bgpConfig, (value) => value.toMap()),
      'customerGatewayId': ?customerGatewayId,
      'effectImmediately': ?effectImmediately,
      'enableDpd': ?enableDpd,
      'enableNatTraversal': ?enableNatTraversal,
      'enableTunnelsBgp': ?enableTunnelsBgp,
      'healthCheckConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'ikeConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentIkeConfig, Map<String, dynamic>>(ikeConfig, (value) => value.toMap()),
      'ipsecConfig': ?pulumi.Input.mapOptionalInputValue<GatewayVpnAttachmentIpsecConfig, Map<String, dynamic>>(ipsecConfig, (value) => value.toMap()),
      'localSubnet': localSubnet,
      'networkType': ?networkType,
      'remoteSubnet': remoteSubnet,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'tunnelOptionsSpecifications': ?pulumi.Input.mapOptionalInputValue<List<GatewayVpnAttachmentTunnelOptionsSpecification>, List<Map<String, dynamic>>>(tunnelOptionsSpecifications, (value) => pulumi.Input.encodeList<GatewayVpnAttachmentTunnelOptionsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnAttachmentName': ?vpnAttachmentName,
    };
  }

  factory GatewayVpnAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentArgs(
      bgpConfig: map['bgpConfig'] == null ? null : GatewayVpnAttachmentBgpConfig.fromMap((map['bgpConfig'] as Map).cast<String, dynamic>()),
      customerGatewayId: map['customerGatewayId'] == null ? null : map['customerGatewayId'] as String,
      effectImmediately: map['effectImmediately'] == null ? null : map['effectImmediately'] as bool,
      enableDpd: map['enableDpd'] == null ? null : map['enableDpd'] as bool,
      enableNatTraversal: map['enableNatTraversal'] == null ? null : map['enableNatTraversal'] as bool,
      enableTunnelsBgp: map['enableTunnelsBgp'] == null ? null : map['enableTunnelsBgp'] as bool,
      healthCheckConfig: map['healthCheckConfig'] == null ? null : GatewayVpnAttachmentHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>()),
      ikeConfig: map['ikeConfig'] == null ? null : GatewayVpnAttachmentIkeConfig.fromMap((map['ikeConfig'] as Map).cast<String, dynamic>()),
      ipsecConfig: map['ipsecConfig'] == null ? null : GatewayVpnAttachmentIpsecConfig.fromMap((map['ipsecConfig'] as Map).cast<String, dynamic>()),
      localSubnet: map['localSubnet'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      remoteSubnet: map['remoteSubnet'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tunnelOptionsSpecifications: map['tunnelOptionsSpecifications'] == null ? null : pulumi.Input.decodeList<GatewayVpnAttachmentTunnelOptionsSpecification>(map['tunnelOptionsSpecifications'], (value) => GatewayVpnAttachmentTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>())),
      vpnAttachmentName: map['vpnAttachmentName'] == null ? null : map['vpnAttachmentName'] as String,
    );
  }
}

