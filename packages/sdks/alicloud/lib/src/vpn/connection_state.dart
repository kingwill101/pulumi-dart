// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_bgp_config.dart';
import 'connection_health_check_config.dart';
import 'connection_ike_config.dart';
import 'connection_ipsec_config.dart';
import 'connection_tunnel_options_specification.dart';

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// Whether to configure routing automatically. Value:
  /// - **true**: Automatically configure routes.
  /// - **false**: does not automatically configure routes.
  final pulumi.Input<bool>? autoConfigRoute;
  /// vpnBgp configuration. See `bgp_config` below.
  final pulumi.Input<ConnectionBgpConfig>? bgpConfig;
  /// The time when the IPsec-VPN connection was created.
  final pulumi.Input<int>? createTime;
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
  final pulumi.Input<List<String>>? localSubnets;
  /// . Field 'name' has been deprecated from provider version 1.216.0. New field 'vpn_connection_name' instead.
  final pulumi.Input<String>? name;
  /// The network type of the IPsec connection. Value:
  /// - **public**: public network, indicating that the IPsec connection establishes an encrypted communication channel through the public network.
  /// - **private**: private network, indicating that the IPsec connection establishes an encrypted communication channel through the private network.
  final pulumi.Input<String>? networkType;
  /// The CIDR block of the local data center. This parameter is used for phase-two negotiation.
  final pulumi.Input<List<String>>? remoteSubnets;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The negotiation status of Tunnel.
  final pulumi.Input<String>? status;
  /// Tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The tunnel options of IPsec. See `tunnel_options_specification` below.
  final pulumi.Input<List<ConnectionTunnelOptionsSpecification>>? tunnelOptionsSpecifications;
  /// The name of the IPsec-VPN connection.
  final pulumi.Input<String>? vpnConnectionName;
  /// The ID of the VPN gateway.
  final pulumi.Input<String>? vpnGatewayId;

  /// Creates a new [ConnectionState].
  /// [autoConfigRoute] Whether to configure routing automatically. Value:
  /// [bgpConfig] vpnBgp configuration. See `bgp_config` below.
  /// [createTime] The time when the IPsec-VPN connection was created.
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
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The negotiation status of Tunnel.
  /// [tags] Tags.
  /// [tunnelOptionsSpecifications] The tunnel options of IPsec. See `tunnel_options_specification` below.
  /// [vpnConnectionName] The name of the IPsec-VPN connection.
  /// [vpnGatewayId] The ID of the VPN gateway.
  ConnectionState({
    pulumi.Output<bool>? autoConfigRoute,
    pulumi.Output<ConnectionBgpConfig>? bgpConfig,
    pulumi.Output<int>? createTime,
    pulumi.Output<String>? customerGatewayId,
    pulumi.Output<bool>? effectImmediately,
    pulumi.Output<bool>? enableDpd,
    pulumi.Output<bool>? enableNatTraversal,
    pulumi.Output<bool>? enableTunnelsBgp,
    pulumi.Output<ConnectionHealthCheckConfig>? healthCheckConfig,
    pulumi.Output<ConnectionIkeConfig>? ikeConfig,
    pulumi.Output<ConnectionIpsecConfig>? ipsecConfig,
    pulumi.Output<List<String>>? localSubnets,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<List<String>>? remoteSubnets,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<ConnectionTunnelOptionsSpecification>>? tunnelOptionsSpecifications,
    pulumi.Output<String>? vpnConnectionName,
    pulumi.Output<String>? vpnGatewayId,
  }) :
      autoConfigRoute = pulumi.Input.asOptionalInput<bool>(autoConfigRoute),
      bgpConfig = pulumi.Input.asOptionalInput<ConnectionBgpConfig>(bgpConfig),
      createTime = pulumi.Input.asOptionalInput<int>(createTime),
      customerGatewayId = pulumi.Input.asOptionalInput<String>(customerGatewayId),
      effectImmediately = pulumi.Input.asOptionalInput<bool>(effectImmediately),
      enableDpd = pulumi.Input.asOptionalInput<bool>(enableDpd),
      enableNatTraversal = pulumi.Input.asOptionalInput<bool>(enableNatTraversal),
      enableTunnelsBgp = pulumi.Input.asOptionalInput<bool>(enableTunnelsBgp),
      healthCheckConfig = pulumi.Input.asOptionalInput<ConnectionHealthCheckConfig>(healthCheckConfig),
      ikeConfig = pulumi.Input.asOptionalInput<ConnectionIkeConfig>(ikeConfig),
      ipsecConfig = pulumi.Input.asOptionalInput<ConnectionIpsecConfig>(ipsecConfig),
      localSubnets = pulumi.Input.asOptionalInput<List<String>>(localSubnets),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      remoteSubnets = pulumi.Input.asOptionalInput<List<String>>(remoteSubnets),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tunnelOptionsSpecifications = pulumi.Input.asOptionalInput<List<ConnectionTunnelOptionsSpecification>>(tunnelOptionsSpecifications),
      vpnConnectionName = pulumi.Input.asOptionalInput<String>(vpnConnectionName),
      vpnGatewayId = pulumi.Input.asOptionalInput<String>(vpnGatewayId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoConfigRoute': ?autoConfigRoute,
      'bgpConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionBgpConfig, Map<String, dynamic>>(bgpConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'customerGatewayId': ?customerGatewayId,
      'effectImmediately': ?effectImmediately,
      'enableDpd': ?enableDpd,
      'enableNatTraversal': ?enableNatTraversal,
      'enableTunnelsBgp': ?enableTunnelsBgp,
      'healthCheckConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'ikeConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionIkeConfig, Map<String, dynamic>>(ikeConfig, (value) => value.toMap()),
      'ipsecConfig': ?pulumi.Input.mapOptionalInputValue<ConnectionIpsecConfig, Map<String, dynamic>>(ipsecConfig, (value) => value.toMap()),
      'localSubnets': ?localSubnets,
      'name': ?name,
      'networkType': ?networkType,
      'remoteSubnets': ?remoteSubnets,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
      'tunnelOptionsSpecifications': ?pulumi.Input.mapOptionalInputValue<List<ConnectionTunnelOptionsSpecification>, List<Map<String, dynamic>>>(tunnelOptionsSpecifications, (value) => pulumi.Input.encodeList<ConnectionTunnelOptionsSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpnConnectionName': ?vpnConnectionName,
      'vpnGatewayId': ?vpnGatewayId,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      autoConfigRoute: map['autoConfigRoute'] == null ? null : pulumi.Output.create<bool>(map['autoConfigRoute'] as bool),
      bgpConfig: map['bgpConfig'] == null ? null : pulumi.Output.create<ConnectionBgpConfig>(ConnectionBgpConfig.fromMap((map['bgpConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<int>(map['createTime'] as int),
      customerGatewayId: map['customerGatewayId'] == null ? null : pulumi.Output.create<String>(map['customerGatewayId'] as String),
      effectImmediately: map['effectImmediately'] == null ? null : pulumi.Output.create<bool>(map['effectImmediately'] as bool),
      enableDpd: map['enableDpd'] == null ? null : pulumi.Output.create<bool>(map['enableDpd'] as bool),
      enableNatTraversal: map['enableNatTraversal'] == null ? null : pulumi.Output.create<bool>(map['enableNatTraversal'] as bool),
      enableTunnelsBgp: map['enableTunnelsBgp'] == null ? null : pulumi.Output.create<bool>(map['enableTunnelsBgp'] as bool),
      healthCheckConfig: map['healthCheckConfig'] == null ? null : pulumi.Output.create<ConnectionHealthCheckConfig>(ConnectionHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>())),
      ikeConfig: map['ikeConfig'] == null ? null : pulumi.Output.create<ConnectionIkeConfig>(ConnectionIkeConfig.fromMap((map['ikeConfig'] as Map).cast<String, dynamic>())),
      ipsecConfig: map['ipsecConfig'] == null ? null : pulumi.Output.create<ConnectionIpsecConfig>(ConnectionIpsecConfig.fromMap((map['ipsecConfig'] as Map).cast<String, dynamic>())),
      localSubnets: map['localSubnets'] == null ? null : pulumi.Output.create<List<String>>((map['localSubnets'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      remoteSubnets: map['remoteSubnets'] == null ? null : pulumi.Output.create<List<String>>((map['remoteSubnets'] as List).cast<String>()),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tunnelOptionsSpecifications: map['tunnelOptionsSpecifications'] == null ? null : pulumi.Output.create<List<ConnectionTunnelOptionsSpecification>>(pulumi.Input.decodeList<ConnectionTunnelOptionsSpecification>(map['tunnelOptionsSpecifications'], (value) => ConnectionTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>()))),
      vpnConnectionName: map['vpnConnectionName'] == null ? null : pulumi.Output.create<String>(map['vpnConnectionName'] as String),
      vpnGatewayId: map['vpnGatewayId'] == null ? null : pulumi.Output.create<String>(map['vpnGatewayId'] as String),
    );
  }
}

