// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_scale_set_vmrun_command_args_doc}
/// Arguments for getVirtualMachineScaleSetVMRunCommand.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_scale_set_vmrun_command_args_doc}
class GetVirtualMachineScaleSetVMRunCommandArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String?>? expand;
  /// The name of the VirtualMachineScaleSetVM
  final pulumi.Input<String> instanceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualMachineRunCommand
  final pulumi.Input<String> runCommandName;
  /// The name of the VirtualMachineScaleSet
  final pulumi.Input<String> vmScaleSetName;

  /// Creates a new [GetVirtualMachineScaleSetVMRunCommandArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [instanceId] The name of the VirtualMachineScaleSetVM
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runCommandName] The name of the VirtualMachineRunCommand
  /// [vmScaleSetName] The name of the VirtualMachineScaleSet
  const GetVirtualMachineScaleSetVMRunCommandArgs({
    this.expand,
    required this.instanceId,
    required this.resourceGroupName,
    required this.runCommandName,
    required this.vmScaleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'instanceId': instanceId,
      'resourceGroupName': resourceGroupName,
      'runCommandName': runCommandName,
      'vmScaleSetName': vmScaleSetName,
    };
  }

  factory GetVirtualMachineScaleSetVMRunCommandArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetVMRunCommandArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runCommandName: pulumi.Input.fromValue(map['runCommandName'] as String),
      vmScaleSetName: pulumi.Input.fromValue(map['vmScaleSetName'] as String),
    );
  }
}
