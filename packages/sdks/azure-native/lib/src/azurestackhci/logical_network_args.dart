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
  const LogicalNetworkArgs({
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
      dhcpOptions: (() { final guardedValue = map['dhcpOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogicalNetworkPropertiesDhcpOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalNetworkName: (() { final guardedValue = map['logicalNetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Subnet>(guardedValue, (value) => Subnet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vmSwitchName: (() { final guardedValue = map['vmSwitchName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

