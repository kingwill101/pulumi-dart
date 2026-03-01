// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_scale_set_vmextension_args_doc}
/// Arguments for getVirtualMachineScaleSetVMExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_scale_set_vmextension_args_doc}
class GetVirtualMachineScaleSetVMExtensionArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The instance ID of the virtual machine.
  final pulumi.Input<String> instanceId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine extension.
  final pulumi.Input<String> vmExtensionName;
  /// The name of the VM scale set.
  final pulumi.Input<String> vmScaleSetName;

  /// Creates a new [GetVirtualMachineScaleSetVMExtensionArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [instanceId] The instance ID of the virtual machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmExtensionName] The name of the virtual machine extension.
  /// [vmScaleSetName] The name of the VM scale set.
  GetVirtualMachineScaleSetVMExtensionArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmExtensionName,
    required pulumi.Output<String> vmScaleSetName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmExtensionName = pulumi.Input.asInput<String>(vmExtensionName),
      vmScaleSetName = pulumi.Input.asInput<String>(vmScaleSetName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'instanceId': instanceId,
      'resourceGroupName': resourceGroupName,
      'vmExtensionName': vmExtensionName,
      'vmScaleSetName': vmScaleSetName,
    };
  }

  factory GetVirtualMachineScaleSetVMExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetVMExtensionArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmExtensionName: pulumi.Output.create<String>(map['vmExtensionName'] as String),
      vmScaleSetName: pulumi.Output.create<String>(map['vmScaleSetName'] as String),
    );
  }
}

