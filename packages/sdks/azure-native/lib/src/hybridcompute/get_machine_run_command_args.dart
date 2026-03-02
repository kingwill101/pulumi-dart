// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hybridcompute_get_machine_run_command_args_doc}
/// Arguments for getMachineRunCommand.
/// {@endtemplate}
/// {@macro pulumi_hybridcompute_get_machine_run_command_args_doc}
class GetMachineRunCommandArgs {
  /// The name of the hybrid machine.
  final pulumi.Input<String> machineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the run command.
  final pulumi.Input<String> runCommandName;

  /// Creates a new [GetMachineRunCommandArgs].
  /// [machineName] The name of the hybrid machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [runCommandName] The name of the run command.
  GetMachineRunCommandArgs({
    required this.machineName,
    required this.resourceGroupName,
    required this.runCommandName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
      'runCommandName': runCommandName,
    };
  }

  factory GetMachineRunCommandArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineRunCommandArgs(
      machineName: (map['machineName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      runCommandName: (map['runCommandName'] as String).input(),
    );
  }
}

