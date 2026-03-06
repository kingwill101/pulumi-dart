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
  const NetworkInterfaceArgs({
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
      createFromLocal: (() { final guardedValue = map['createFromLocal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dnsSettings: (() { final guardedValue = map['dnsSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterfaceDNSSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipConfigurations: (() { final guardedValue = map['ipConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IPConfiguration>(guardedValue, (value) => IPConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      macAddress: (() { final guardedValue = map['macAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceName: (() { final guardedValue = map['networkInterfaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSecurityGroup: (() { final guardedValue = map['networkSecurityGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkSecurityGroupArmReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

