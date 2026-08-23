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
  const GetVirtualMachineExtensionArgs({
    this.expand,
    required this.resourceGroupName,
    required this.vmExtensionName,
    required this.vmName,
  });

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
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vmExtensionName: pulumi.Input.fromValue(map['vmExtensionName'] as String),
      vmName: pulumi.Input.fromValue(map['vmName'] as String),
    );
  }
}
