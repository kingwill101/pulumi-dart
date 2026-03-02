// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_virtual_machine_args_doc}
/// Arguments for getVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_virtual_machine_args_doc}
class GetVirtualMachineArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual machine
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetVirtualMachineArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualMachineName] Name of the virtual machine
  GetVirtualMachineArgs({
    required this.resourceGroupName,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualMachineName: (map['virtualMachineName'] as String).input(),
    );
  }
}

