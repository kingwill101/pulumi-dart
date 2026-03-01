// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bgp_config.dart';
import 'connection_health_check_config.dart';
import 'connection_ike_config.dart';
import 'connection_ipsec_config.dart';
import 'connection_tunnel_options_specification.dart';

/// {@template pulumi_vpn_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_vpn_connection_connection_args_doc}
class ConnectionArgs {
  /// Whether to configure routing automatically. Value:
  /// - **true**: Automatically configure routes.
  /// - **false**: does not automatically configure routes.
  final pulumi.Input<bool>? autoConfigRoute;
  /// vpnBgp configuration. See `bgp_config` below.
  final pulumi.Input<ConnectionBgpConfig>? bgpConfig;
  /// The ID of the customer gateway.
  final pulumi.Input<String>? customerGatewayId;
  /// Indicates whether IPsec-VPN negotiations are initiated immediately. Valid values.
  final pulumi.Input<bool>? effectImmediately;
  /// Wether enable Dpd detection.
  final pulumi.Input<bool>? enableDpd;
  /// enable nat traversal.
  final pulumi.Input<bool>? enableNatTraversal;
  /// Enable tunnel bgp.
  final pulumi.Input<bool>? enableTunnelsBgp;
  /// Health Check information. See `health_check_config` below.
  final pulumi.Input<ConnectionHealthCheckConfig>? healthCheckConfig;
  /// The configuration of Phase 1 negotiations. See `ike_config` below.
  final pulumi.Input<ConnectionIkeConfig>? ikeConfig;
  /// IPsec configuration. See `ipsec_config` below.
  final pulumi.Input<ConnectionIpsecConfig>? ipsecConfig;
  /// The CIDR block of the VPC to be connected with the local data center. This parameter is used for phase-two negotiation.
  final pulumi.Input<List<String>> localSubnets;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_connection_name' instead.
  final pulumi.Input<String>? name;
  /// The network type of the IPsec connection. Value:
  /// - **public**: public network, indicating that the IPsec connection establishes an encrypted communication channel through the public network.
  /// - **private**: private network, indicating that the IPsec connection establishes an encrypted communication channel through the private network.
  final pulumi.Input<String>? networkType;
  /// The CIDR block of the local data center. This parameter is used for phase-two negotiation.
  final pulumi.Input<List<String>> remoteSubnets;
  /// Tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The tunnel options of IPsec. See `tunnel_options_specification` below.
  final pulumi.Input<List<ConnectionTunnelOptionsSpecification>>? tunnelOptionsSpecifications;
  /// The name of the IPsec-VPN connection.
  final pulumi.Input<String>? vpnConnectionName;
  /// The ID of the VPN gateway.
  final pulumi.Input<String> vpnGatewayId;

  /// Creates a new [ConnectionArgs].
  /// [autoConfigRoute] Whether to configure routing automatically. Value:
  /// [bgpConfig] vpnBgp configuration. See `bgp_config` below.
  /// [customerGatewayId] The ID of the customer gateway.
  /// [effectImmediately] Indicates whether IPsec-VPN negotiations are initiated immediately. Valid values.
  /// [enableDpd] Wether enable Dpd detection.
  /// [enableNatTraversal] enable nat traversal.
  /// [enableTunnelsBgp] Enable tunnel bgp.
  /// [healthCheckConfig] Health Check information. See `health_check_config` below.
  /// [ikeConfig] The configuration of Phase 1 negotiations. See `ike_config` below.
  /// [ipsecConfig] IPsec configuration. See `ipsec_config` below.
  /// [localSubnets] The CIDR block of the VPC to be connected with the local data center. This parameter is used for phase-two negotiation.
  /// [name] . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_connection_name' instead.
  /// [networkType] The network type of the IPsec connection. Value:
  /// [remoteSubnets] The CIDR block of the local data center. This parameter is used for phase-two negotiation.
  /// [tags] Tags.
  /// [tunnelOptionsSpecifications] The tunnel options of IPsec. See `tunnel_options_specification` below.
  /// [vpnConnectionName] The name of the IPsec-VPN connection.
  /// [vpnGatewayId] The ID of the VPN gateway.
  ConnectionArgs({
    bool? autoConfigRoute,
    ConnectionBgpConfig? bgpConfig,
    String? customerGatewayId,
    bool? effectImmediately,
    bool? enableDpd,
    bool? enableNatTraversal,
    bool? enableTunnelsBgp,
    ConnectionHealthCheckConfig? healthCheckConfig,
    ConnectionIkeConfig? ikeConfig,
    ConnectionIpsecConfig? ipsecConfig,
    required List<String> localSubnets,
    String? name,
    String? networkType,
    required List<String> remoteSubnets,
    Map<String, String>? tags,
    List<ConnectionTunnelOptionsSpecification>? tunnelOptionsSpecifications,
    String? vpnConnectionName,
    required String vpnGatewayId,
  }) :
      autoConfigRoute = pulumi.Input.asOptionalInput<bool>(autoConfigRoute),
      bgpConfig = pulumi.Input.asOptionalInput<ConnectionBgpConfig>(bgpConfig),
      customerGatewayId = pulumi.Input.asOptionalInput<String>(customerGatewayId),
      effectImmediately = pulumi.Input.asOptionalInput<bool>(effectImmediately),
      enableDpd = pulumi.Input.asOptionalInput<bool>(enableDpd),
      enableNatTraversal = pulumi.Input.asOptionalInput<bool>(enableNatTraversal),
      enableTunnelsBgp = pulumi.Input.asOptionalInput<bool>(enableTunnelsBgp),
      healthCheckConfig = pulumi.Input.asOptionalInput<ConnectionHealthCheckConfig>(healthCheckConfig),
      ikeConfig = pulumi.Input.asOptionalInput<ConnectionIkeConfig>(ikeConfig),
      ipsecConfig = pulumi.Input.asOptionalInput<ConnectionIpsecConfig>(ipsecConfig),
      localSubnets = pulumi.Input.asInput<List<String>>(localSubnets),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      remoteSubnets = pulumi.Input.asInput<List<String>>(remoteSubnets),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tunnelOptionsSpecifications = pulumi.Input.asOptionalInput<List<ConnectionTunnelOptionsSpecification>>(tunnelOptionsSpecifications),
      vpnConnectionName = pulumi.Input.asOptionalInput<String>(vpnConnectionName),
      vpnGatewayId = pulumi.Input.asInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoConfigRoute': ?autoConfigRoute,
      'bgpConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBgpConfig, Map<String, dynamic>>(bgpConfig, (value) => value.toMap()),
      'customerGatewayId': ?customerGatewayId,
      'effectImmediately': ?effectImmediately,
      'enableDpd': ?enableDpd,
      'enableNatTraversal': ?enableNatTraversal,
      'enableTunnelsBgp': ?enableTunnelsBgp,
      'healthCheckConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'ikeConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionIkeConfig, Map<String, dynamic>>(ikeConfig, (value) => value.toMap()),
      'ipsecConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionIpsecConfig, Map<String, dynamic>>(ipsecConfig, (value) => value.toMap()),
      'localSubnets': localSubnets,
      'name': ?name,
      'networkType': ?networkType,
      'remoteSubnets': remoteSubnets,
      'tags': ?tags,
      'tunnelOptionsSpecifications': ?pulumi.Input.mapOptionalInputValue<List<ConnectionTunnelOptionsSpecification>, List<Map<String, dynamic>>>(tunnelOptionsSpecifications, (value) => pulumi.Input.encodeList<ConnectionTunnelOptionsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnConnectionName': ?vpnConnectionName,
      'vpnGatewayId': vpnGatewayId,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      autoConfigRoute: map['autoConfigRoute'] == null ? null : map['autoConfigRoute'] as bool,
      bgpConfig: map['bgpConfig'] == null ? null : ConnectionBgpConfig.fromMap((map['bgpConfig'] as Map).cast<String, dynamic>()),
      customerGatewayId: map['customerGatewayId'] == null ? null : map['customerGatewayId'] as String,
      effectImmediately: map['effectImmediately'] == null ? null : map['effectImmediately'] as bool,
      enableDpd: map['enableDpd'] == null ? null : map['enableDpd'] as bool,
      enableNatTraversal: map['enableNatTraversal'] == null ? null : map['enableNatTraversal'] as bool,
      enableTunnelsBgp: map['enableTunnelsBgp'] == null ? null : map['enableTunnelsBgp'] as bool,
      healthCheckConfig: map['healthCheckConfig'] == null ? null : ConnectionHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>()),
      ikeConfig: map['ikeConfig'] == null ? null : ConnectionIkeConfig.fromMap((map['ikeConfig'] as Map).cast<String, dynamic>()),
      ipsecConfig: map['ipsecConfig'] == null ? null : ConnectionIpsecConfig.fromMap((map['ipsecConfig'] as Map).cast<String, dynamic>()),
      localSubnets: (map['localSubnets'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      remoteSubnets: (map['remoteSubnets'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      tunnelOptionsSpecifications: map['tunnelOptionsSpecifications'] == null ? null : pulumi.Input.decodeList<ConnectionTunnelOptionsSpecification>(map['tunnelOptionsSpecifications'], (value) => ConnectionTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>())),
      vpnConnectionName: map['vpnConnectionName'] == null ? null : map['vpnConnectionName'] as String,
      vpnGatewayId: map['vpnGatewayId'] as String,
    );
  }
}

