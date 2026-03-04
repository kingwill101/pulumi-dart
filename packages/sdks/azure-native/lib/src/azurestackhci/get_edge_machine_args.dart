// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestackhci_get_edge_machine_args_doc}
/// Arguments for getEdgeMachine.
/// {@endtemplate}
/// {@macro pulumi_azurestackhci_get_edge_machine_args_doc}
class GetEdgeMachineArgs {
  /// Name of Device
  final pulumi.Input<String> edgeMachineName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEdgeMachineArgs].
  /// [edgeMachineName] Name of Device
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEdgeMachineArgs({
    required this.edgeMachineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edgeMachineName': edgeMachineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEdgeMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetEdgeMachineArgs(
      edgeMachineName: pulumi.Input.fromValue(map['edgeMachineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
