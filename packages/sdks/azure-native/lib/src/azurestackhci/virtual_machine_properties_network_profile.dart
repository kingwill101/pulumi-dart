// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_network_interfaces.dart';

/// NetworkProfile - describes the network configuration the virtual machine
class VirtualMachinePropertiesNetworkProfile {
  /// NetworkInterfaces - list of network interfaces to be attached to the virtual machine
  final pulumi.Input<List<VirtualMachinePropertiesNetworkInterfaces>>? networkInterfaces;

  /// Creates a new [VirtualMachinePropertiesNetworkProfile].
  /// [networkInterfaces] NetworkInterfaces - list of network interfaces to be attached to the virtual machine
  VirtualMachinePropertiesNetworkProfile({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachinePropertiesNetworkInterfaces>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<VirtualMachinePropertiesNetworkInterfaces, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachinePropertiesNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesNetworkProfile(
      networkInterfaces: map['networkInterfaces'] == null ? null : (pulumi.Input.decodeList<VirtualMachinePropertiesNetworkInterfaces>(map['networkInterfaces'], (value) => VirtualMachinePropertiesNetworkInterfaces.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

