// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_scale_set_vmargs_doc}
/// Arguments for getVirtualMachineScaleSetVM.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_scale_set_vmargs_doc}
class GetVirtualMachineScaleSetVMArgs {
  /// The expand expression to apply on the operation. 'InstanceView' will retrieve the instance view of the virtual machine. 'UserData' will retrieve the UserData of the virtual machine.
  final pulumi.Input<String>? expand;

  /// The instance ID of the virtual machine.
  final pulumi.Input<String> instanceId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the VM scale set.
  final pulumi.Input<String> vmScaleSetName;

  /// Creates a new [GetVirtualMachineScaleSetVMArgs].
  /// [expand] The expand expression to apply on the operation. 'InstanceView' will retrieve the instance view of the virtual machine. 'UserData' will retrieve the UserData of the virtual machine.
  /// [instanceId] The instance ID of the virtual machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmScaleSetName] The name of the VM scale set.
  GetVirtualMachineScaleSetVMArgs({
    this.expand,
    required this.instanceId,
    required this.resourceGroupName,
    required this.vmScaleSetName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'instanceId': instanceId,
      'resourceGroupName': resourceGroupName,
      'vmScaleSetName': vmScaleSetName,
    };
  }

  factory GetVirtualMachineScaleSetVMArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetVMArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      vmScaleSetName: pulumi.Input.fromValue(map['vmScaleSetName'] as String),
    );
  }
}
