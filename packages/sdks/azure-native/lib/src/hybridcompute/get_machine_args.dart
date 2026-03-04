// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_get_machine_args_doc}
/// Arguments for getMachine.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_get_machine_args_doc}
class GetMachineArgs {
  /// The expand expression to apply on the operation.
  final pulumi.Input<String>? expand;

  /// The name of the hybrid machine.
  final pulumi.Input<String> machineName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMachineArgs].
  /// [expand] The expand expression to apply on the operation.
  /// [machineName] The name of the hybrid machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetMachineArgs({
    this.expand,
    required this.machineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
