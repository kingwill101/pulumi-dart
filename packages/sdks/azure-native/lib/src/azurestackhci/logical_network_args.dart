// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'logical_network_properties_dhcp_options.dart';
import 'subnet.dart';

/// {@template pulumi_azurestackhci_logical_network_args_doc}
/// The set of arguments for LogicalNetwork.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_logical_network_args_doc}
class LogicalNetworkArgs {
  /// DhcpOptions contains an array of DNS servers available to VMs deployed in the logical network. Standard DHCP option for a subnet overrides logical network DHCP options.
  final pulumi.Input<LogicalNetworkPropertiesDhcpOptions>? dhcpOptions;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of the logical network
  final pulumi.Input<String>? logicalNetworkName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Subnet - list of subnets under the logical network
  final pulumi.Input<List<Subnet>>? subnets;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// name of the network switch to be used for VMs
  final pulumi.Input<String>? vmSwitchName;

  /// Creates a new [LogicalNetworkArgs].
  /// [dhcpOptions] DhcpOptions contains an array of DNS servers available to VMs deployed in the logical network. Standard DHCP option for a subnet overrides logical network DHCP options.
  /// [extendedLocation] The extendedLocation of the resource.
  /// [location] The geo-location where the resource lives
  /// [logicalNetworkName] Name of the logical network
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [subnets] Subnet - list of subnets under the logical network
  /// [tags] Resource tags.
  /// [vmSwitchName] name of the network switch to be used for VMs
  LogicalNetworkArgs({
    this.dhcpOptions,
    this.extendedLocation,
    this.location,
    this.logicalNetworkName,
    required this.resourceGroupName,
    this.subnets,
    this.tags,
    this.vmSwitchName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dhcpOptions': ?pulumi.Input.mapOptionalInputValue<LogicalNetworkPropertiesDhcpOptions, Map<String, dynamic>>(dhcpOptions, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'logicalNetworkName': ?logicalNetworkName,
      'resourceGroupName': resourceGroupName,
      'subnets': ?pulumi.Input.mapOptionalInputValue<List<Subnet>, List<Map<String, dynamic>>>(subnets, (value) => pulumi.Input.encodeList<Subnet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'vmSwitchName': ?vmSwitchName,
    };
  }

  factory LogicalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return LogicalNetworkArgs(
      dhcpOptions: map['dhcpOptions'] == null ? null : (LogicalNetworkPropertiesDhcpOptions.fromMap((map['dhcpOptions']! as Map).cast<String, dynamic>())).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      logicalNetworkName: map['logicalNetworkName'] == null ? null : (map['logicalNetworkName']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      subnets: map['subnets'] == null ? null : (pulumi.Input.decodeList<Subnet>(map['subnets']!, (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vmSwitchName: map['vmSwitchName'] == null ? null : (map['vmSwitchName']! as String).input(),
    );
  }
}

