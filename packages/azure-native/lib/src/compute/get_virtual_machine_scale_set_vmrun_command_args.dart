// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_scale_set_vmrun_command_args_doc}
/// Arguments for getVirtualMachineScaleSetVMRunCommand.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_scale_set_vmrun_command_args_doc}
class GetVirtualMachineScaleSetVMRunCommandArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
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
  GetVirtualMachineScaleSetVMRunCommandArgs({
    String? expand,
    required String instanceId,
    required String resourceGroupName,
    required String runCommandName,
    required String vmScaleSetName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runCommandName = pulumi.Input.asInput<String>(runCommandName),
      vmScaleSetName = pulumi.Input.asInput<String>(vmScaleSetName);

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
      expand: map['expand'] == null ? null : map['expand'] as String,
      instanceId: map['instanceId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      runCommandName: map['runCommandName'] as String,
      vmScaleSetName: map['vmScaleSetName'] as String,
    );
  }
}

