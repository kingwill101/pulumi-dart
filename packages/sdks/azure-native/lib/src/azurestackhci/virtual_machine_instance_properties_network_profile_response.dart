// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_arm_reference_response.dart';

/// NetworkProfile - describes the network configuration the virtual machine instance
class VirtualMachineInstancePropertiesNetworkProfileResponse {
  /// NetworkInterfaces - list of network interfaces to be attached to the virtual machine instance
  final List<NetworkInterfaceArmReferenceResponse>? networkInterfaces;

  /// Creates a new [VirtualMachineInstancePropertiesNetworkProfileResponse].
  /// [networkInterfaces] NetworkInterfaces - list of network interfaces to be attached to the virtual machine instance
  VirtualMachineInstancePropertiesNetworkProfileResponse({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?networkInterfaces == null ? null : pulumi.Input.encodeList<NetworkInterfaceArmReferenceResponse, Map<String, dynamic>>(networkInterfaces!, (value) => value.toMap()),
    };
  }

  factory VirtualMachineInstancePropertiesNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesNetworkProfileResponse(
      networkInterfaces: map['networkInterfaces'] == null ? null : pulumi.Input.decodeList<NetworkInterfaceArmReferenceResponse>(map['networkInterfaces'], (value) => NetworkInterfaceArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

