// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_get_configuration_assignment_args_doc}
/// Arguments for getConfigurationAssignment.
/// {@endtemplate}
/// {@macro pulumi_maintenance_get_configuration_assignment_args_doc}
class GetConfigurationAssignmentArgs {
  /// The name of the ConfigurationAssignment
  final pulumi.Input<String> configurationAssignmentName;
  /// Resource provider name
  final pulumi.Input<String> providerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource parent name
  final pulumi.Input<String> resourceName;
  /// Resource parent type
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetConfigurationAssignmentArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  /// [providerName] Resource provider name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Resource parent name
  /// [resourceType] Resource parent type
  const GetConfigurationAssignmentArgs({
    required this.configurationAssignmentName,
    required this.providerName,
    required this.resourceGroupName,
    required this.resourceName,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': configurationAssignmentName,
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceType': resourceType,
    };
  }

  factory GetConfigurationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationAssignmentArgs(
      configurationAssignmentName: pulumi.Input.fromValue(map['configurationAssignmentName'] as String),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

