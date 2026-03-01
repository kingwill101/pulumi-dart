// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automanage_get_configuration_profile_assignment_args_doc}
/// Arguments for getConfigurationProfileAssignment.
/// {@endtemplate}
/// {@macro pulumi_automanage_get_configuration_profile_assignment_args_doc}
class GetConfigurationProfileAssignmentArgs {
  /// The configuration profile assignment name.
  final pulumi.Input<String> configurationProfileAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine.
  final pulumi.Input<String> vmName;

  /// Creates a new [GetConfigurationProfileAssignmentArgs].
  /// [configurationProfileAssignmentName] The configuration profile assignment name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmName] The name of the virtual machine.
  GetConfigurationProfileAssignmentArgs({
    required pulumi.Output<String> configurationProfileAssignmentName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vmName,
  }) :
      configurationProfileAssignmentName = pulumi.Input.asInput<String>(configurationProfileAssignmentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmName = pulumi.Input.asInput<String>(vmName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileAssignmentName': configurationProfileAssignmentName,
      'resourceGroupName': resourceGroupName,
      'vmName': vmName,
    };
  }

  factory GetConfigurationProfileAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileAssignmentArgs(
      configurationProfileAssignmentName: pulumi.Output.create<String>(map['configurationProfileAssignmentName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vmName: pulumi.Output.create<String>(map['vmName'] as String),
    );
  }
}

