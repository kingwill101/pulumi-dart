// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_network_configuration_properties.dart';
import 'terminal_server_configuration.dart';

/// {@template pulumi_managednetworkfabric_network_fabric_args_doc}
/// The set of arguments for NetworkFabric.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_network_fabric_args_doc}
class NetworkFabricArgs {
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// ASN of CE devices for CE/PE connectivity.
  final pulumi.Input<double> fabricASN;
  /// The version of Network Fabric.
  final pulumi.Input<String>? fabricVersion;
  /// IPv4Prefix for Management Network. Example: 10.1.0.0/19.
  final pulumi.Input<String> ipv4Prefix;
  /// IPv6Prefix for Management Network. Example: 3FFE:FFFF:0:CD40::/59
  final pulumi.Input<String>? ipv6Prefix;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Configuration to be used to setup the management network.
  final pulumi.Input<ManagementNetworkConfigurationProperties> managementNetworkConfiguration;
  /// Azure resource ID for the NetworkFabricController the NetworkFabric belongs.
  final pulumi.Input<String> networkFabricControllerId;
  /// Name of the Network Fabric.
  final pulumi.Input<String>? networkFabricName;
  /// Supported Network Fabric SKU.Example: Compute / Aggregate racks. Once the user chooses a particular SKU, only supported racks can be added to the Network Fabric. The SKU determines whether it is a single / multi rack Network Fabric.
  final pulumi.Input<String> networkFabricSku;
  /// Number of compute racks associated to Network Fabric.
  final pulumi.Input<int>? rackCount;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Number of servers.Possible values are from 1-16.
  final pulumi.Input<int> serverCountPerRack;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Network and credentials configuration currently applied to terminal server.
  final pulumi.Input<TerminalServerConfiguration> terminalServerConfiguration;

  /// Creates a new [NetworkFabricArgs].
  /// [annotation] Switch configuration description.
  /// [fabricASN] ASN of CE devices for CE/PE connectivity.
  /// [fabricVersion] The version of Network Fabric.
  /// [ipv4Prefix] IPv4Prefix for Management Network. Example: 10.1.0.0/19.
  /// [ipv6Prefix] IPv6Prefix for Management Network. Example: 3FFE:FFFF:0:CD40::/59
  /// [location] The geo-location where the resource lives
  /// [managementNetworkConfiguration] Configuration to be used to setup the management network.
  /// [networkFabricControllerId] Azure resource ID for the NetworkFabricController the NetworkFabric belongs.
  /// [networkFabricName] Name of the Network Fabric.
  /// [networkFabricSku] Supported Network Fabric SKU.Example: Compute / Aggregate racks. Once the user chooses a particular SKU, only supported racks can be added to the Network Fabric. The SKU determines whether it is a single / multi rack Network Fabric.
  /// [rackCount] Number of compute racks associated to Network Fabric.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverCountPerRack] Number of servers.Possible values are from 1-16.
  /// [tags] Resource tags.
  /// [terminalServerConfiguration] Network and credentials configuration currently applied to terminal server.
  NetworkFabricArgs({
    String? annotation,
    required double fabricASN,
    String? fabricVersion,
    required String ipv4Prefix,
    String? ipv6Prefix,
    String? location,
    required ManagementNetworkConfigurationProperties managementNetworkConfiguration,
    required String networkFabricControllerId,
    String? networkFabricName,
    required String networkFabricSku,
    int? rackCount,
    required String resourceGroupName,
    required int serverCountPerRack,
    Map<String, String>? tags,
    required TerminalServerConfiguration terminalServerConfiguration,
  }) :
      annotation = pulumi.Input.asOptionalInput<String>(annotation),
      fabricASN = pulumi.Input.asInput<double>(fabricASN),
      fabricVersion = pulumi.Input.asOptionalInput<String>(fabricVersion),
      ipv4Prefix = pulumi.Input.asInput<String>(ipv4Prefix),
      ipv6Prefix = pulumi.Input.asOptionalInput<String>(ipv6Prefix),
      location = pulumi.Input.asOptionalInput<String>(location),
      managementNetworkConfiguration = pulumi.Input.asInput<ManagementNetworkConfigurationProperties>(managementNetworkConfiguration),
      networkFabricControllerId = pulumi.Input.asInput<String>(networkFabricControllerId),
      networkFabricName = pulumi.Input.asOptionalInput<String>(networkFabricName),
      networkFabricSku = pulumi.Input.asInput<String>(networkFabricSku),
      rackCount = pulumi.Input.asOptionalInput<int>(rackCount),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverCountPerRack = pulumi.Input.asInput<int>(serverCountPerRack),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      terminalServerConfiguration = pulumi.Input.asInput<TerminalServerConfiguration>(terminalServerConfiguration);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotation': ?annotation,
      'fabricASN': fabricASN,
      'fabricVersion': ?fabricVersion,
      'ipv4Prefix': ipv4Prefix,
      'ipv6Prefix': ?ipv6Prefix,
      'location': ?location,
      'managementNetworkConfiguration': pulumi.Input.mapInputValue<ManagementNetworkConfigurationProperties, Map<String, dynamic>>(managementNetworkConfiguration, (value) => value.toMap()),
      'networkFabricControllerId': networkFabricControllerId,
      'networkFabricName': ?networkFabricName,
      'networkFabricSku': networkFabricSku,
      'rackCount': ?rackCount,
      'resourceGroupName': resourceGroupName,
      'serverCountPerRack': serverCountPerRack,
      'tags': ?tags,
      'terminalServerConfiguration': pulumi.Input.mapInputValue<TerminalServerConfiguration, Map<String, dynamic>>(terminalServerConfiguration, (value) => value.toMap()),
    };
  }

  factory NetworkFabricArgs.fromMap(Map<String, dynamic> map) {
    return NetworkFabricArgs(
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      fabricASN: map['fabricASN'] as double,
      fabricVersion: map['fabricVersion'] == null ? null : map['fabricVersion'] as String,
      ipv4Prefix: map['ipv4Prefix'] as String,
      ipv6Prefix: map['ipv6Prefix'] == null ? null : map['ipv6Prefix'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managementNetworkConfiguration: ManagementNetworkConfigurationProperties.fromMap((map['managementNetworkConfiguration'] as Map).cast<String, dynamic>()),
      networkFabricControllerId: map['networkFabricControllerId'] as String,
      networkFabricName: map['networkFabricName'] == null ? null : map['networkFabricName'] as String,
      networkFabricSku: map['networkFabricSku'] as String,
      rackCount: map['rackCount'] == null ? null : map['rackCount'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
      serverCountPerRack: map['serverCountPerRack'] as int,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      terminalServerConfiguration: TerminalServerConfiguration.fromMap((map['terminalServerConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

