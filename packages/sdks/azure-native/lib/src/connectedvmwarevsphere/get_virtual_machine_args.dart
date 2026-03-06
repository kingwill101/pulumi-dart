// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectedvmwarevsphere_get_virtual_machine_args_doc}
/// Arguments for getVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_connectedvmwarevsphere_get_virtual_machine_args_doc}
class GetVirtualMachineArgs {
  /// The Resource Group Name.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the virtual machine resource.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetVirtualMachineArgs].
  /// [resourceGroupName] The Resource Group Name.
  /// [virtualMachineName] Name of the virtual machine resource.
  const GetVirtualMachineArgs({
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
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      virtualMachineName: pulumi.Input.fromValue(map['virtualMachineName'] as String),
    );
  }
}

