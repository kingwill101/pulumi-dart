// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'interface_dnssettings.dart';
import 'ipconfiguration.dart';
import 'network_security_group_arm_reference.dart';

/// {@template pulumi_azurestackhci_network_interface_args_doc}
/// The set of arguments for NetworkInterface.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_network_interface_args_doc}
class NetworkInterfaceArgs {
  /// Boolean indicating whether this is a existing local network interface or if one should be created.
  final pulumi.Input<bool>? createFromLocal;
  /// DNS Settings for the interface
  final pulumi.Input<InterfaceDNSSettings>? dnsSettings;
  /// The extendedLocation of the resource.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// IPConfigurations - A list of IPConfigurations of the network interface.
  final pulumi.Input<List<IPConfiguration>>? ipConfigurations;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// MacAddress - The MAC address of the network interface.
  final pulumi.Input<String>? macAddress;
  /// Name of the network interface
  final pulumi.Input<String>? networkInterfaceName;
  /// NetworkSecurityGroup - Network Security Group attached to the network interface.
  final pulumi.Input<NetworkSecurityGroupArmReference>? networkSecurityGroup;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NetworkInterfaceArgs].
  /// [createFromLocal] Boolean indicating whether this is a existing local network interface or if one should be created.
  /// [dnsSettings] DNS Settings for the interface
  /// [extendedLocation] The extendedLocation of the resource.
  /// [ipConfigurations] IPConfigurations - A list of IPConfigurations of the network interface.
  /// [location] The geo-location where the resource lives
  /// [macAddress] MacAddress - The MAC address of the network interface.
  /// [networkInterfaceName] Name of the network interface
  /// [networkSecurityGroup] NetworkSecurityGroup - Network Security Group attached to the network interface.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  NetworkInterfaceArgs({
    this.createFromLocal,
    this.dnsSettings,
    this.extendedLocation,
    this.ipConfigurations,
    this.location,
    this.macAddress,
    this.networkInterfaceName,
    this.networkSecurityGroup,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createFromLocal': ?createFromLocal,
      'dnsSettings': ?pulumi.Input.mapOptionalInputValue<InterfaceDNSSettings, Map<String, dynamic>>(dnsSettings, (value) => value.toMap()),
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'ipConfigurations': ?pulumi.Input.mapOptionalInputValue<List<IPConfiguration>, List<Map<String, dynamic>>>(ipConfigurations, (value) => pulumi.Input.encodeList<IPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'macAddress': ?macAddress,
      'networkInterfaceName': ?networkInterfaceName,
      'networkSecurityGroup': ?pulumi.Input.mapOptionalInputValue<NetworkSecurityGroupArmReference, Map<String, dynamic>>(networkSecurityGroup, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArgs(
      createFromLocal: map['createFromLocal'] == null ? null : (map['createFromLocal'] as bool).input(),
      dnsSettings: map['dnsSettings'] == null ? null : (InterfaceDNSSettings.fromMap((map['dnsSettings'] as Map).cast<String, dynamic>())).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      ipConfigurations: map['ipConfigurations'] == null ? null : (pulumi.Input.decodeList<IPConfiguration>(map['ipConfigurations'], (value) => IPConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      macAddress: map['macAddress'] == null ? null : (map['macAddress'] as String).input(),
      networkInterfaceName: map['networkInterfaceName'] == null ? null : (map['networkInterfaceName'] as String).input(),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : (NetworkSecurityGroupArmReference.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

