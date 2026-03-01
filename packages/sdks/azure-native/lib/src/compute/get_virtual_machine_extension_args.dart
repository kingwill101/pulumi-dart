// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_virtual_machine_extension_args_doc}
/// Arguments for getVirtualMachineExtension.
/// {@endtemplate}
/// {@macro pulumi_compute_get_virtual_machine_extension_args_doc}
class GetVirtualMachineExtensionArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine extension.
  final pulumi.Input<String> vmExtensionName;
  /// The name of the virtual machine.
  final pulumi.Input<String> vmName;

  /// Creates a new [GetVirtualMachineExtensionArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmExtensionName] The name of the virtual machine extension.
  /// [vmName] The name of the virtual machine.
  GetVirtualMachineExtensionArgs({
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmExtensionName,
    required pulumi.Output<String> vmName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmExtensionName = pulumi.Input.asInput<String>(vmExtensionName),
      vmName = pulumi.Input.asInput<String>(vmName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'vmExtensionName': vmExtensionName,
      'vmName': vmName,
    };
  }

  factory GetVirtualMachineExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineExtensionArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmExtensionName: pulumi.Output.create<String>(map['vmExtensionName'] as String),
      vmName: pulumi.Output.create<String>(map['vmName'] as String),
    );
  }
}

