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
    this.autoConfigRoute,
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
    this.localSubnets,
    this.name,
    this.networkType,
    this.remoteSubnets,
    this.resourceGroupId,
    this.status,
    this.tags,
    this.tunnelOptionsSpecifications,
    this.vpnConnectionName,
    this.vpnGatewayId,
  });

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
      autoConfigRoute: (() { final guardedValue = map['autoConfigRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      bgpConfig: (() { final guardedValue = map['bgpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionBgpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customerGatewayId: (() { final guardedValue = map['customerGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectImmediately: (() { final guardedValue = map['effectImmediately']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDpd: (() { final guardedValue = map['enableDpd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableNatTraversal: (() { final guardedValue = map['enableNatTraversal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTunnelsBgp: (() { final guardedValue = map['enableTunnelsBgp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckConfig: (() { final guardedValue = map['healthCheckConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionHealthCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ikeConfig: (() { final guardedValue = map['ikeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionIkeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipsecConfig: (() { final guardedValue = map['ipsecConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionIpsecConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localSubnets: (() { final guardedValue = map['localSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteSubnets: (() { final guardedValue = map['remoteSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tunnelOptionsSpecifications: (() { final guardedValue = map['tunnelOptionsSpecifications']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionTunnelOptionsSpecification>(guardedValue, (value) => ConnectionTunnelOptionsSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpnConnectionName: (() { final guardedValue = map['vpnConnectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnGatewayId: (() { final guardedValue = map['vpnGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

