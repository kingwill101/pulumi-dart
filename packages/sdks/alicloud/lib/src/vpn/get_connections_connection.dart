// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connections_connection_ike_config.dart';
import 'get_connections_connection_ipsec_config.dart';
import 'get_connections_connection_tunnel_options_specification.dart';
import 'get_connections_connection_vco_health_check.dart';
import 'get_connections_connection_vpn_bgp_config.dart';

class GetConnectionsConnection {
  final pulumi.Input<String> createTime;
  /// Use the VPN customer gateway ID as the search key.
  final pulumi.Input<String> customerGatewayId;
  final pulumi.Input<bool> effectImmediately;
  /// Wether enable Dpd detection.
  final pulumi.Input<bool> enableDpd;
  /// enable nat traversal.
  final pulumi.Input<bool> enableNatTraversal;
  /// Enable tunnel bgp.
  final pulumi.Input<bool> enableTunnelsBgp;
  /// ID of the VPN connection.
  final pulumi.Input<String> id;
  /// The ike_config mapping supports the following:
  final pulumi.Input<List<GetConnectionsConnectionIkeConfig>>? ikeConfigs;
  /// The ipsec_config mapping supports the following:
  final pulumi.Input<List<GetConnectionsConnectionIpsecConfig>>? ipsecConfigs;
  /// The local subnet of the VPN connection.
  final pulumi.Input<String> localSubnet;
  /// The name of the VPN connection.
  final pulumi.Input<String> name;
  /// The remote subnet of the VPN connection.
  final pulumi.Input<String> remoteSubnet;
  /// The negotiation status of the BGP routing protocol. Valid values: `success`, `false`.
  final pulumi.Input<String> status;
  /// The tunnel_options_specification supports the following:
  final pulumi.Input<List<GetConnectionsConnectionTunnelOptionsSpecification>> tunnelOptionsSpecifications;
  final pulumi.Input<List<GetConnectionsConnectionVcoHealthCheck>>? vcoHealthChecks;
  /// The vpn_bgp_config mapping supports the following:
  final pulumi.Input<List<GetConnectionsConnectionVpnBgpConfig>>? vpnBgpConfigs;
  /// Use the VPN gateway ID as the search key.
  final pulumi.Input<String> vpnGatewayId;

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
      'ikeConfigs': ?pulumi.Input.mapOptionalInputValue<List<GetConnectionsConnectionIkeConfig>, List<Map<String, dynamic>>>(ikeConfigs, (value) => pulumi.Input.encodeList<GetConnectionsConnectionIkeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipsecConfigs': ?pulumi.Input.mapOptionalInputValue<List<GetConnectionsConnectionIpsecConfig>, List<Map<String, dynamic>>>(ipsecConfigs, (value) => pulumi.Input.encodeList<GetConnectionsConnectionIpsecConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localSubnet': localSubnet,
      'name': name,
      'remoteSubnet': remoteSubnet,
      'status': status,
      'tunnelOptionsSpecifications': pulumi.Input.mapInputValue<List<GetConnectionsConnectionTunnelOptionsSpecification>, List<Map<String, dynamic>>>(tunnelOptionsSpecifications, (value) => pulumi.Input.encodeList<GetConnectionsConnectionTunnelOptionsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vcoHealthChecks': ?pulumi.Input.mapOptionalInputValue<List<GetConnectionsConnectionVcoHealthCheck>, List<Map<String, dynamic>>>(vcoHealthChecks, (value) => pulumi.Input.encodeList<GetConnectionsConnectionVcoHealthCheck, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnBgpConfigs': ?pulumi.Input.mapOptionalInputValue<List<GetConnectionsConnectionVpnBgpConfig>, List<Map<String, dynamic>>>(vpnBgpConfigs, (value) => pulumi.Input.encodeList<GetConnectionsConnectionVpnBgpConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory GetConnectionsConnection.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnection(
      createTime: (map['createTime'] as String).input(),
      customerGatewayId: (map['customerGatewayId'] as String).input(),
      effectImmediately: (map['effectImmediately'] as bool).input(),
      enableDpd: (map['enableDpd'] as bool).input(),
      enableNatTraversal: (map['enableNatTraversal'] as bool).input(),
      enableTunnelsBgp: (map['enableTunnelsBgp'] as bool).input(),
      id: (map['id'] as String).input(),
      ikeConfigs: map['ikeConfigs'] == null ? null : (pulumi.Input.decodeList<GetConnectionsConnectionIkeConfig>(map['ikeConfigs'], (value) => GetConnectionsConnectionIkeConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ipsecConfigs: map['ipsecConfigs'] == null ? null : (pulumi.Input.decodeList<GetConnectionsConnectionIpsecConfig>(map['ipsecConfigs'], (value) => GetConnectionsConnectionIpsecConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      localSubnet: (map['localSubnet'] as String).input(),
      name: (map['name'] as String).input(),
      remoteSubnet: (map['remoteSubnet'] as String).input(),
      status: (map['status'] as String).input(),
      tunnelOptionsSpecifications: (pulumi.Input.decodeList<GetConnectionsConnectionTunnelOptionsSpecification>(map['tunnelOptionsSpecifications'], (value) => GetConnectionsConnectionTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vcoHealthChecks: map['vcoHealthChecks'] == null ? null : (pulumi.Input.decodeList<GetConnectionsConnectionVcoHealthCheck>(map['vcoHealthChecks'], (value) => GetConnectionsConnectionVcoHealthCheck.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnBgpConfigs: map['vpnBgpConfigs'] == null ? null : (pulumi.Input.decodeList<GetConnectionsConnectionVpnBgpConfig>(map['vpnBgpConfigs'], (value) => GetConnectionsConnectionVpnBgpConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpnGatewayId: (map['vpnGatewayId'] as String).input(),
    );
  }
}

