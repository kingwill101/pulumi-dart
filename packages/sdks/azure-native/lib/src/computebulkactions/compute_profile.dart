// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_extension.dart';
import 'virtual_machine_profile.dart';

/// Compute Profile to configure the Virtual Machines.
class ComputeProfile {
  /// Specifies the Microsoft.Compute API version to use when creating underlying Virtual Machines.
  /// The default value will be the latest supported computeApiVersion by LaunchBulkInstancesOperation.
  final pulumi.Input<String>? computeApiVersion;
  /// Virtual Machine Extensions Array to be specified according to "specification/compute/resource-manager/Microsoft.Compute/ComputeRP/stable/{computeApiVersion}/virtualMachine.json#/definitions/VirtualMachineExtension"
  final pulumi.Input<List<VirtualMachineExtension>>? extensions;
  /// Base Virtual Machine Profile Properties to be specified according to "specification/compute/resource-manager/Microsoft.Compute/ComputeRP/stable/{computeApiVersion}/virtualMachine.json#/definitions/VirtualMachineProperties"
  final pulumi.Input<VirtualMachineProfile> virtualMachineProfile;

  /// Creates a new [ComputeProfile].
  /// [computeApiVersion] Specifies the Microsoft.Compute API version to use when creating underlying Virtual Machines.
  /// [extensions] Virtual Machine Extensions Array to be specified according to "specification/compute/resource-manager/Microsoft.Compute/ComputeRP/stable/{computeApiVersion}/virtualMachine.json#/definitions/VirtualMachineExtension"
  /// [virtualMachineProfile] Base Virtual Machine Profile Properties to be specified according to "specification/compute/resource-manager/Microsoft.Compute/ComputeRP/stable/{computeApiVersion}/virtualMachine.json#/definitions/VirtualMachineProperties"
  const ComputeProfile({
    this.computeApiVersion,
    this.extensions,
    required this.virtualMachineProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeApiVersion': ?computeApiVersion,
      'extensions': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineExtension>, List<Map<String, dynamic>>>(extensions, (value) => pulumi.Input.encodeList<VirtualMachineExtension, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualMachineProfile': pulumi.Input.mapInputValue<VirtualMachineProfile, Map<String, dynamic>>(virtualMachineProfile, (value) => value.toMap()),
    };
  }

  factory ComputeProfile.fromMap(Map<String, dynamic> map) {
    return ComputeProfile(
      computeApiVersion: (() { final guardedValue = map['computeApiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extensions: (() { final guardedValue = map['extensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineExtension>(guardedValue, (value) => VirtualMachineExtension.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualMachineProfile: pulumi.Input.fromValue(VirtualMachineProfile.fromMap((map['virtualMachineProfile']! as Map).cast<String, dynamic>())),
    );
  }
}
