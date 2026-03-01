// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_network_interfaces.dart';

/// NetworkProfile - describes the network configuration the virtual machine
class VirtualMachinePropertiesResponseNetworkProfile {
  /// NetworkInterfaces - list of network interfaces to be attached to the virtual machine
  final List<VirtualMachinePropertiesResponseNetworkInterfaces>? networkInterfaces;

  /// Creates a new [VirtualMachinePropertiesResponseNetworkProfile].
  /// [networkInterfaces] NetworkInterfaces - list of network interfaces to be attached to the virtual machine
  VirtualMachinePropertiesResponseNetworkProfile({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<VirtualMachinePropertiesResponseNetworkInterfaces, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory VirtualMachinePropertiesResponseNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseNetworkProfile(
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<VirtualMachinePropertiesResponseNetworkInterfaces>(map['networkInterfaces'], (value) => VirtualMachinePropertiesResponseNetworkInterfaces.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

