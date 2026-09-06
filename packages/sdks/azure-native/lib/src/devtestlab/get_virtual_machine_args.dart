// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_virtual_machine_args_doc}
/// Arguments for getVirtualMachine.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_virtual_machine_args_doc}
class GetVirtualMachineArgs {
  /// Specify the $expand query. Example: 'properties($expand=artifacts,computeVm,networkInterface,applicableSchedule)'
  final pulumi.Input<String?>? expand;
  /// The name of the lab.
  final pulumi.Input<String> labName;
  /// The name of the virtual machine.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetVirtualMachineArgs].
  /// [expand] Specify the $expand query. Example: 'properties($expand=artifacts,computeVm,networkInterface,applicableSchedule)'
  /// [labName] The name of the lab.
  /// [name] The name of the virtual machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetVirtualMachineArgs({
    this.expand,
    required this.labName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetVirtualMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
