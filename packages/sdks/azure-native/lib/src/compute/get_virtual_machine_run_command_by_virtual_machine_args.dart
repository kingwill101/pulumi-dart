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
    this.expand,
    required this.resourceGroupName,
    required this.runCommandName,
    required this.vmName,
  });

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
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      runCommandName: pulumi.Input.fromValue(map['runCommandName'] as String),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
    );
  }
}

