// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_arm_reference.dart';

/// NetworkProfile - describes the network configuration the virtual machine instance
class VirtualMachineInstancePropertiesNetworkProfile {
  /// NetworkInterfaces - list of network interfaces to be attached to the virtual machine instance
  final List<NetworkInterfaceArmReference>? networkInterfaces;

  /// Creates a new [VirtualMachineInstancePropertiesNetworkProfile].
  /// [networkInterfaces] NetworkInterfaces - list of network interfaces to be attached to the virtual machine instance
  VirtualMachineInstancePropertiesNetworkProfile({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterfaceArmReference, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesNetworkProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesNetworkProfile(
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceArmReference>(map['networkInterfaces'], (value) => NetworkInterfaceArmReference.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

