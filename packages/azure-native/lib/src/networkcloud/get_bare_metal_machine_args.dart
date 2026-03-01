// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_bare_metal_machine_args_doc}
/// Arguments for getBareMetalMachine.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_bare_metal_machine_args_doc}
class GetBareMetalMachineArgs {
  /// The name of the bare metal machine.
  final pulumi.Input<String> bareMetalMachineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetBareMetalMachineArgs].
  /// [bareMetalMachineName] The name of the bare metal machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetBareMetalMachineArgs({
    required String bareMetalMachineName,
    required String resourceGroupName,
  }) :
      bareMetalMachineName = pulumi.Input.asInput<String>(bareMetalMachineName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bareMetalMachineName': bareMetalMachineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetBareMetalMachineArgs.fromMap(Map<String, dynamic> map) {
    return GetBareMetalMachineArgs(
      bareMetalMachineName: map['bareMetalMachineName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

