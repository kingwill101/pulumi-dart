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
    pulumi.Output<String>? expand,
    required pulumi.Output<String> machineName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      machineName = pulumi.Input.asInput<String>(machineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineArgs(
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      machineName: pulumi.Output.create<String>(map['machineName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

