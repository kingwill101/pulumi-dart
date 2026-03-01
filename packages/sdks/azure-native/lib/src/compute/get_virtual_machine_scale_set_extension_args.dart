// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_scale_set_extension_args_doc}
/// Arguments for getVirtualMachineScaleSetExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_scale_set_extension_args_doc}
class GetVirtualMachineScaleSetExtensionArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VM scale set.
  final pulumi.Input<String> vmScaleSetName;
  /// The name of the VM scale set extension.
  final pulumi.Input<String> vmssExtensionName;

  /// Creates a new [GetVirtualMachineScaleSetExtensionArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmScaleSetName] The name of the VM scale set.
  /// [vmssExtensionName] The name of the VM scale set extension.
  GetVirtualMachineScaleSetExtensionArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmScaleSetName,
    required pulumi.Output<String> vmssExtensionName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmScaleSetName = pulumi.Input.asInput<String>(vmScaleSetName),
      vmssExtensionName = pulumi.Input.asInput<String>(vmssExtensionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'vmScaleSetName': vmScaleSetName,
      'vmssExtensionName': vmssExtensionName,
    };
  }

  factory GetVirtualMachineScaleSetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineScaleSetExtensionArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmScaleSetName: pulumi.Output.create<String>(map['vmScaleSetName'] as String),
      vmssExtensionName: pulumi.Output.create<String>(map['vmssExtensionName'] as String),
    );
  }
}

