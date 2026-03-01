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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmScaleSetName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmScaleSetName = pulumi.Input.asInput<String>(vmScaleSetName);

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
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmScaleSetName: pulumi.Output.create<String>(map['vmScaleSetName'] as String),
    );
  }
}

