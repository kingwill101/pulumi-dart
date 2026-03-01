// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'point_to_point_vpn_gateway_connection_configuration.dart';

/// {@template pulumi_network_point_to_point_vpn_gateway_point_to_point_vpn_gateway_args_doc}
/// The set of arguments for PointToPointVpnGateway.
/// {@endtemplate}
/// {@macro pulumi_network_point_to_point_vpn_gateway_point_to_point_vpn_gateway_args_doc}
class PointToPointVpnGatewayArgs {
  /// A `connection_configuration` block as defined below.
  final pulumi.Input<List<PointToPointVpnGatewayConnectionConfiguration>> connectionConfigurations;
  /// A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway.
  final pulumi.Input<List<String>>? dnsServers;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? routingPreferenceInternetEnabled;
  /// The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway.
  final pulumi.Input<int> scaleUnit;
  /// A mapping of tags to assign to the Point-to-Site VPN Gateway.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> virtualHubId;
  /// The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created.
  final pulumi.Input<String> vpnServerConfigurationId;

  /// Creates a new [PointToPointVpnGatewayArgs].
  /// [connectionConfigurations] A `connection_configuration` block as defined below.
  /// [dnsServers] A list of IP Addresses of DNS Servers for the Point-to-Site VPN Gateway.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Point-to-Site VPN Gateway. Changing this forces a new resource to be created.
  /// [routingPreferenceInternetEnabled] Is the Routing Preference for the Public IP Interface of the VPN Gateway enabled? Defaults to `false`. Changing this forces a new resource to be created.
  /// [scaleUnit] The [Scale Unit](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-faq#what-is-a-virtual-wan-gateway-scale-unit) for this Point-to-Site VPN Gateway.
  /// [tags] A mapping of tags to assign to the Point-to-Site VPN Gateway.
  /// [virtualHubId] The ID of the Virtual Hub where this Point-to-Site VPN Gateway should exist. Changing this forces a new resource to be created.
  /// [vpnServerConfigurationId] The ID of the VPN Server Configuration which this Point-to-Site VPN Gateway should use. Changing this forces a new resource to be created.
  PointToPointVpnGatewayArgs({
    required List<PointToPointVpnGatewayConnectionConfiguration> connectionConfigurations,
    List<String>? dnsServers,
    String? location,
    String? name,
    required String resourceGroupName,
    bool? routingPreferenceInternetEnabled,
    required int scaleUnit,
    Map<String, String>? tags,
    required String virtualHubId,
    required String vpnServerConfigurationId,
  }) :
      connectionConfigurations = pulumi.Input.asInput<List<PointToPointVpnGatewayConnectionConfiguration>>(connectionConfigurations),
      dnsServers = pulumi.Input.asOptionalInput<List<String>>(dnsServers),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routingPreferenceInternetEnabled = pulumi.Input.asOptionalInput<bool>(routingPreferenceInternetEnabled),
      scaleUnit = pulumi.Input.asInput<int>(scaleUnit),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualHubId = pulumi.Input.asInput<String>(virtualHubId),
      vpnServerConfigurationId = pulumi.Input.asInput<String>(vpnServerConfigurationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionConfigurations': pulumi.Input.mapInputValue<List<PointToPointVpnGatewayConnectionConfiguration>, List<Map<String, dynamic>>>(connectionConfigurations, (value) => pulumi.Input.encodeList<PointToPointVpnGatewayConnectionConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsServers': ?dnsServers,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'routingPreferenceInternetEnabled': ?routingPreferenceInternetEnabled,
      'scaleUnit': scaleUnit,
      'tags': ?tags,
      'virtualHubId': virtualHubId,
      'vpnServerConfigurationId': vpnServerConfigurationId,
    };
  }

  factory PointToPointVpnGatewayArgs.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayArgs(
      connectionConfigurations: pulumi.Input.decodeList<PointToPointVpnGatewayConnectionConfiguration>(map['connectionConfigurations'], (value) => PointToPointVpnGatewayConnectionConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      dnsServers: map['dnsServers'] == null ? null : (map['dnsServers'] as List).cast<String>(),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routingPreferenceInternetEnabled: map['routingPreferenceInternetEnabled'] == null ? null : map['routingPreferenceInternetEnabled'] as bool,
      scaleUnit: map['scaleUnit'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualHubId: map['virtualHubId'] as String,
      vpnServerConfigurationId: map['vpnServerConfigurationId'] as String,
    );
  }
}

