// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_get_configuration_assignments_for_resource_group_args_doc}
/// Arguments for getConfigurationAssignmentsForResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_maintenance_get_configuration_assignments_for_resource_group_args_doc}
class GetConfigurationAssignmentsForResourceGroupArgs {
  /// The name of the ConfigurationAssignment
  final pulumi.Input<String> configurationAssignmentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigurationAssignmentsForResourceGroupArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetConfigurationAssignmentsForResourceGroupArgs({
    required this.configurationAssignmentName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': configurationAssignmentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConfigurationAssignmentsForResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationAssignmentsForResourceGroupArgs(
      configurationAssignmentName: pulumi.Input.fromValue(map['configurationAssignmentName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
