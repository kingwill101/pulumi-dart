// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automanage_get_configuration_profile_hcrpassignment_args_doc}
/// Arguments for getConfigurationProfileHCRPAssignment.
/// {@endtemplate}
/// {@macro pulumi_automanage_get_configuration_profile_hcrpassignment_args_doc}
class GetConfigurationProfileHCRPAssignmentArgs {
  /// The configuration profile assignment name.
  final pulumi.Input<String> configurationProfileAssignmentName;
  /// The name of the Arc machine.
  final pulumi.Input<String> machineName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationProfileHCRPAssignmentArgs].
  /// [configurationProfileAssignmentName] The configuration profile assignment name.
  /// [machineName] The name of the Arc machine.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetConfigurationProfileHCRPAssignmentArgs({
    required this.configurationProfileAssignmentName,
    required this.machineName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileAssignmentName': configurationProfileAssignmentName,
      'machineName': machineName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationProfileHCRPAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileHCRPAssignmentArgs(
      configurationProfileAssignmentName: pulumi.Input.fromValue(map['configurationProfileAssignmentName'] as String),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
