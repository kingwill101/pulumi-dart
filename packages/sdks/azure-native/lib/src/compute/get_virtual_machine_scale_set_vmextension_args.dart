// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_scale_set_vmextension_args_doc}
/// Arguments for getVirtualMachineScaleSetVMExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_scale_set_vmextension_args_doc}
class GetVirtualMachineScaleSetVMExtensionArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String?>? expand;
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
  const GetVirtualMachineScaleSetVMExtensionArgs({
    this.expand,
    required this.instanceId,
    required this.resourceGroupName,
    required this.vmExtensionName,
    required this.vmScaleSetName,
  });

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
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmExtensionName: pulumi.Input.fromValue(map['vmExtensionName'] as String),
      vmScaleSetName: pulumi.Input.fromValue(map['vmScaleSetName'] as String),
    );
  }
}
