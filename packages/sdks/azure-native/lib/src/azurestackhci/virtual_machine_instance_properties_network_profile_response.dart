// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_arm_reference_response.dart';

/// NetworkProfile - describes the network configuration the virtual machine instance
class VirtualMachineInstancePropertiesNetworkProfileResponse {
  /// NetworkInterfaces - list of network interfaces to be attached to the virtual machine instance
  final pulumi.Input<List<NetworkInterfaceArmReferenceResponse>>? networkInterfaces;

  /// Creates a new [VirtualMachineInstancePropertiesNetworkProfileResponse].
  /// [networkInterfaces] NetworkInterfaces - list of network interfaces to be attached to the virtual machine instance
  const VirtualMachineInstancePropertiesNetworkProfileResponse({
    this.networkInterfaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkInterfaces': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceArmReferenceResponse>, List<Map<String, dynamic>>>(networkInterfaces, (value) => pulumi.Input.encodeList<NetworkInterfaceArmReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VirtualMachineInstancePropertiesNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesNetworkProfileResponse(
      networkInterfaces: (() { final guardedValue = map['networkInterfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkInterfaceArmReferenceResponse>(guardedValue, (value) => NetworkInterfaceArmReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
