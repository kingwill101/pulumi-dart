// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_reference.dart';
import 'virtual_machine_network_interface_configuration.dart';

/// Specifies the network interfaces or the networking configuration of the virtual machine.
class NetworkProfile {
  /// specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations
  final pulumi.Input<String>? networkApiVersion;
  /// Specifies the networking configurations that will be used to create the virtual machine networking resources.
  final pulumi.Input<List<VirtualMachineNetworkInterfaceConfiguration>>? networkInterfaceConfigurations;
  /// Specifies the list of resource Ids for the network interfaces associated with the virtual machine.
  final pulumi.Input<List<NetworkInterfaceReference>>? networkInterfaces;

  /// Creates a new [NetworkProfile].
  /// [networkApiVersion] specifies the Microsoft.Network API version used when creating networking resources in the Network Interface Configurations
  /// [networkInterfaceConfigurations] Specifies the networking configurations that will be used to create the virtual machine networking resources.
  /// [networkInterfaces] Specifies the list of resource Ids for the network interfaces associated with the virtual machine.
  const NetworkProfile({
    this.networkApiVersion,
    this.networkInterfaceConfigurations,
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkApiVersion': ?networkApiVersion,
      'networkInterfaceConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineNetworkInterfaceConfiguration>, List<Map<String, dynamic>>>(networkInterfaceConfigurations, (value) => pulumi.Input.encodeList<VirtualMachineNetworkInterfaceConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceReference>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkProfile.fromMap(Map<String, dynamic> map) {
    return NetworkProfile(
      networkApiVersion: (() { final guardedValue = map['networkApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceConfigurations: (() { final guardedValue = map['networkInterfaceConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineNetworkInterfaceConfiguration>(guardedValue, (value) => VirtualMachineNetworkInterfaceConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceReference>(guardedValue, (value) => NetworkInterfaceReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
