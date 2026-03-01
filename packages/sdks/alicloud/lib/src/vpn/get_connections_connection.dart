// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connections_connection_ike_config.dart';
import 'get_connections_connection_ipsec_config.dart';
import 'get_connections_connection_tunnel_options_specification.dart';
import 'get_connections_connection_vco_health_check.dart';
import 'get_connections_connection_vpn_bgp_config.dart';

class GetConnectionsConnection {
  final String createTime;
  /// Use the VPN customer gateway ID as the search key.
  final String customerGatewayId;
  final bool effectImmediately;
  /// Wether enable Dpd detection.
  final bool enableDpd;
  /// enable nat traversal.
  final bool enableNatTraversal;
  /// Enable tunnel bgp.
  final bool enableTunnelsBgp;
  /// ID of the VPN connection.
  final String id;
  /// The ike_config mapping supports the following:
  final List<GetConnectionsConnectionIkeConfig>? ikeConfigs;
  /// The ipsec_config mapping supports the following:
  final List<GetConnectionsConnectionIpsecConfig>? ipsecConfigs;
  /// The local subnet of the VPN connection.
  final String localSubnet;
  /// The name of the VPN connection.
  final String name;
  /// The remote subnet of the VPN connection.
  final String remoteSubnet;
  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final String status;
  /// The tunnel_options_specification supports the following:
  final List<GetConnectionsConnectionTunnelOptionsSpecification> tunnelOptionsSpecifications;
  final List<GetConnectionsConnectionVcoHealthCheck>? vcoHealthChecks;
  /// The vpn_bgp_config mapping supports the following:
  final List<GetConnectionsConnectionVpnBgpConfig>? vpnBgpConfigs;
  /// Use the VPN gateway ID as the search key.
  final String vpnGatewayId;

  /// Creates a new [GetConnectionsConnection].
  /// [createTime] Required.
  /// [customerGatewayId] Use the VPN customer gateway ID as the search key.
  /// [effectImmediately] Required.
  /// [enableDpd] Wether enable Dpd detection.
  /// [enableNatTraversal] enable nat traversal.
  /// [enableTunnelsBgp] Enable tunnel bgp.
  /// [id] ID of the VPN connection.
  /// [ikeConfigs] The ike_config mapping supports the following:
  /// [ipsecConfigs] The ipsec_config mapping supports the following:
  /// [localSubnet] The local subnet of the VPN connection.
  /// [name] The name of the VPN connection.
  /// [remoteSubnet] The remote subnet of the VPN connection.
  /// [status] The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  /// [tunnelOptionsSpecifications] The tunnel_options_specification supports the following:
  /// [vcoHealthChecks] Optional.
  /// [vpnBgpConfigs] The vpn_bgp_config mapping supports the following:
  /// [vpnGatewayId] Use the VPN gateway ID as the search key.
  GetConnectionsConnection({
    required this.createTime,
    required this.customerGatewayId,
    required this.effectImmediately,
    required this.enableDpd,
    required this.enableNatTraversal,
    required this.enableTunnelsBgp,
    required this.id,
    this.ikeConfigs,
    this.ipsecConfigs,
    required this.localSubnet,
    required this.name,
    required this.remoteSubnet,
    required this.status,
    required this.tunnelOptionsSpecifications,
    this.vcoHealthChecks,
    this.vpnBgpConfigs,
    required this.vpnGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'customerGatewayId': customerGatewayId,
      'effectImmediately': effectImmediately,
      'enableDpd': enableDpd,
      'enableNatTraversal': enableNatTraversal,
      'enableTunnelsBgp': enableTunnelsBgp,
      'id': id,
      'ikeConfigs': ?ikeConfigs == null ? null : pulumi.Input.encodeList<GetConnectionsConnectionIkeConfig, Map<String, dynamic>>(ikeConfigs!, (value) => value.toMap()),
      'ipsecConfigs': ?ipsecConfigs == null ? null : pulumi.Input.encodeList<GetConnectionsConnectionIpsecConfig, Map<String, dynamic>>(ipsecConfigs!, (value) => value.toMap()),
      'localSubnet': localSubnet,
      'name': name,
      'remoteSubnet': remoteSubnet,
      'status': status,
      'tunnelOptionsSpecifications': pulumi.Input.encodeList<GetConnectionsConnectionTunnelOptionsSpecification, Map<String, dynamic>>(tunnelOptionsSpecifications, (value) => value.toMap()),
      'vcoHealthChecks': ?vcoHealthChecks == null ? null : pulumi.Input.encodeList<GetConnectionsConnectionVcoHealthCheck, Map<String, dynamic>>(vcoHealthChecks!, (value) => value.toMap()),
      'vpnBgpConfigs': ?vpnBgpConfigs == null ? null : pulumi.Input.encodeList<GetConnectionsConnectionVpnBgpConfig, Map<String, dynamic>>(vpnBgpConfigs!, (value) => value.toMap()),
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetConnectionsConnection.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnection(
      createTime: map['createTime'] as String,
      customerGatewayId: map['customerGatewayId'] as String,
      effectImmediately: map['effectImmediately'] as bool,
      enableDpd: map['enableDpd'] as bool,
      enableNatTraversal: map['enableNatTraversal'] as bool,
      enableTunnelsBgp: map['enableTunnelsBgp'] as bool,
      id: map['id'] as String,
      ikeConfigs: map['ikeConfigs'] == null ? null : pulumi.Input.decodeList<GetConnectionsConnectionIkeConfig>(map['ikeConfigs'], (value) => GetConnectionsConnectionIkeConfig.fromMap((value as Map).cast<String, dynamic>())),
      ipsecConfigs: map['ipsecConfigs'] == null ? null : pulumi.Input.decodeList<GetConnectionsConnectionIpsecConfig>(map['ipsecConfigs'], (value) => GetConnectionsConnectionIpsecConfig.fromMap((value as Map).cast<String, dynamic>())),
      localSubnet: map['localSubnet'] as String,
      name: map['name'] as String,
      remoteSubnet: map['remoteSubnet'] as String,
      status: map['status'] as String,
      tunnelOptionsSpecifications: pulumi.Input.decodeList<GetConnectionsConnectionTunnelOptionsSpecification>(map['tunnelOptionsSpecifications'], (value) => GetConnectionsConnectionTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>())),
      vcoHealthChecks: map['vcoHealthChecks'] == null ? null : pulumi.Input.decodeList<GetConnectionsConnectionVcoHealthCheck>(map['vcoHealthChecks'], (value) => GetConnectionsConnectionVcoHealthCheck.fromMap((value as Map).cast<String, dynamic>())),
      vpnBgpConfigs: map['vpnBgpConfigs'] == null ? null : pulumi.Input.decodeList<GetConnectionsConnectionVpnBgpConfig>(map['vpnBgpConfigs'], (value) => GetConnectionsConnectionVpnBgpConfig.fromMap((value as Map).cast<String, dynamic>())),
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}

