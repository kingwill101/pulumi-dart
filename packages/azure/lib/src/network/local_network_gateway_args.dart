// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_network_gateway_bgp_settings.dart';

/// {@template pulumi_network_local_network_gateway_local_network_gateway_args_doc}
/// The set of arguments for LocalNetworkGateway.
/// {@endtemplate}
/// {@macro pulumi_network_local_network_gateway_local_network_gateway_args_doc}
class LocalNetworkGatewayArgs {
  /// The list of string CIDRs representing the address spaces the gateway exposes.
  final pulumi.Input<List<String>>? addressSpaces;
  /// A `bgp_settings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  final pulumi.Input<LocalNetworkGatewayBgpSettings>? bgpSettings;
  /// The gateway IP address to connect with.
  final pulumi.Input<String>? gatewayAddress;
  /// The gateway FQDN to connect with.
  ///
  /// > **Note:** Either `gateway_address` or `gateway_fqdn` should be specified.
  final pulumi.Input<String>? gatewayFqdn;
  /// The location/region where the local network gateway is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the local network gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LocalNetworkGatewayArgs].
  /// [addressSpaces] The list of string CIDRs representing the address spaces the gateway exposes.
  /// [bgpSettings] A `bgp_settings` block as defined below containing the Local Network Gateway's BGP speaker settings.
  /// [gatewayAddress] The gateway IP address to connect with.
  /// [gatewayFqdn] The gateway FQDN to connect with.
  /// [location] The location/region where the local network gateway is created. Changing this forces a new resource to be created.
  /// [name] The name of the local network gateway. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the local network gateway. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  LocalNetworkGatewayArgs({
    List<String>? addressSpaces,
    LocalNetworkGatewayBgpSettings? bgpSettings,
    String? gatewayAddress,
    String? gatewayFqdn,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      addressSpaces = pulumi.Input.asOptionalInput<List<String>>(addressSpaces),
      bgpSettings = pulumi.Input.asOptionalInput<LocalNetworkGatewayBgpSettings>(bgpSettings),
      gatewayAddress = pulumi.Input.asOptionalInput<String>(gatewayAddress),
      gatewayFqdn = pulumi.Input.asOptionalInput<String>(gatewayFqdn),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressSpaces': ?addressSpaces,
      'bgpSettings': ?pulumi.Input.mapOptionalInputValue<LocalNetworkGatewayBgpSettings, Map<String, dynamic>>(bgpSettings, (value) => value.toMap()),
      'gatewayAddress': ?gatewayAddress,
      'gatewayFqdn': ?gatewayFqdn,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LocalNetworkGatewayArgs.fromMap(Map<String, dynamic> map) {
    return LocalNetworkGatewayArgs(
      addressSpaces: map['addressSpaces'] == null ? null : (map['addressSpaces'] as List).cast<String>(),
      bgpSettings: map['bgpSettings'] == null ? null : LocalNetworkGatewayBgpSettings.fromMap((map['bgpSettings'] as Map).cast<String, dynamic>()),
      gatewayAddress: map['gatewayAddress'] == null ? null : map['gatewayAddress'] as String,
      gatewayFqdn: map['gatewayFqdn'] == null ? null : map['gatewayFqdn'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

