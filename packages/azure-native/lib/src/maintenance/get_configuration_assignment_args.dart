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
  GetConfigurationAssignmentArgs({
    required String configurationAssignmentName,
    required String providerName,
    required String resourceGroupName,
    required String resourceName,
    required String resourceType,
  }) :
      configurationAssignmentName = pulumi.Input.asInput<String>(configurationAssignmentName),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceType = pulumi.Input.asInput<String>(resourceType);

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
      configurationAssignmentName: map['configurationAssignmentName'] as String,
      providerName: map['providerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

