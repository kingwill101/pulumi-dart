// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_run_command_by_virtual_machine_args_doc}
/// Arguments for getVirtualMachineRunCommandByVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_run_command_by_virtual_machine_args_doc}
class GetVirtualMachineRunCommandByVirtualMachineArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VirtualMachineRunCommand
  final pulumi.Input<String> runCommandName;
  /// The name of the VirtualMachine
  final pulumi.Input<String> vmName;

  /// Creates a new [GetVirtualMachineRunCommandByVirtualMachineArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runCommandName] The name of the VirtualMachineRunCommand
  /// [vmName] The name of the VirtualMachine
  GetVirtualMachineRunCommandByVirtualMachineArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> runCommandName,
    required pulumi.Output<String> vmName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      runCommandName = pulumi.Input.asInput<String>(runCommandName),
      vmName = pulumi.Input.asInput<String>(vmName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'runCommandName': runCommandName,
      'vmName': vmName,
    };
  }

  factory GetVirtualMachineRunCommandByVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineRunCommandByVirtualMachineArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      runCommandName: pulumi.Output.create<String>(map['runCommandName'] as String),
      vmName: pulumi.Output.create<String>(map['vmName'] as String),
    );
  }
}

