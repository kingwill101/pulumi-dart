// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policy_get_virtual_machine_configuration_assignment_get_virtual_machine_configuration_assignment_args_doc}
/// Arguments for getVirtualMachineConfigurationAssignment.
/// {@endtemplate}
/// {@macro pulumi_policy_get_virtual_machine_configuration_assignment_get_virtual_machine_configuration_assignment_args_doc}
class GetVirtualMachineConfigurationAssignmentArgs {
  /// Specifies the name of the Guest Configuration Assignment.
  final pulumi.Input<String> name;
  /// Specifies the Name of the Resource Group where the Guest Configuration Assignment exists.
  final pulumi.Input<String> resourceGroupName;
  /// Only retrieve Policy Set Definitions from this Management Group.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetVirtualMachineConfigurationAssignmentArgs].
  /// [name] Specifies the name of the Guest Configuration Assignment.
  /// [resourceGroupName] Specifies the Name of the Resource Group where the Guest Configuration Assignment exists.
  /// [virtualMachineName] Only retrieve Policy Set Definitions from this Management Group.
  GetVirtualMachineConfigurationAssignmentArgs({
    required String name,
    required String resourceGroupName,
    required String virtualMachineName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      virtualMachineName = pulumi.Input.asInput<String>(virtualMachineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetVirtualMachineConfigurationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineConfigurationAssignmentArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      virtualMachineName: map['virtualMachineName'] as String,
    );
  }
}

