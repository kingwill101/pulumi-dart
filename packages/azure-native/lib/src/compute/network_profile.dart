// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_reference.dart';
import 'virtual_machine_network_interface_configuration.dart';

/// Specifies the network interfaces or the networking configuration of the virtual machine.
class NetworkProfile {
  /// specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations
  final String? networkApiVersion;
  /// Specifies the networking configurations that will be used to create the virtual machine networking resources.
  final List<VirtualMachineNetworkInterfaceConfiguration>? networkInterfaceConfigurations;
  /// Specifies the list of resource Ids for the network interfaces associated with the virtual machine.
  final List<NetworkInterfaceReference>? networkInterfaces;

  /// Creates a new [NetworkProfile].
  /// [networkApiVersion] specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations
  /// [networkInterfaceConfigurations] Specifies the networking configurations that will be used to create the virtual machine networking resources.
  /// [networkInterfaces] Specifies the list of resource Ids for the network interfaces associated with the virtual machine.
  NetworkProfile({
    this.networkApiVersion,
    this.networkInterfaceConfigurations,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaceConfigurations': ?networkInterfaceConfigurations == null ? null : pulumi.Input.encodeList<VirtualMachineNetworkInterfaceConfiguration, Map<String, dynamic>>(networkInterfaceConfigurations!, (value) => value.toMap()),
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterfaceReference, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      networkApiVersion: map['networkApiVersion'] == null ? null : map['networkApiVersion'] as String,
      networkInterfaceConfigurations: map['networkInterfaceConfigurations'] == null ? null : pulumi.Input.decodeList<VirtualMachineNetworkInterfaceConfiguration>(map['networkInterfaceConfigurations'], (value) => VirtualMachineNetworkInterfaceConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceReference>(map['networkInterfaces'], (value) => NetworkInterfaceReference.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

