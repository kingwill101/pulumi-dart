// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_get_configuration_assignment_parent_args_doc}
/// Arguments for getConfigurationAssignmentParent.
/// {@endtemplate}
/// {@macro pulumi_maintenance_get_configuration_assignment_parent_args_doc}
class GetConfigurationAssignmentParentArgs {
  /// The name of the ConfigurationAssignment
  final pulumi.Input<String> configurationAssignmentName;
  /// Resource provider name
  final pulumi.Input<String> providerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource name
  final pulumi.Input<String> resourceName;
  /// Resource parent name
  final pulumi.Input<String> resourceParentName;
  /// Resource parent type
  final pulumi.Input<String> resourceParentType;
  /// Resource type
  final pulumi.Input<String> resourceType;

  /// Creates a new [GetConfigurationAssignmentParentArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  /// [providerName] Resource provider name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Resource name
  /// [resourceParentName] Resource parent name
  /// [resourceParentType] Resource parent type
  /// [resourceType] Resource type
  GetConfigurationAssignmentParentArgs({
    required this.configurationAssignmentName,
    required this.providerName,
    required this.resourceGroupName,
    required this.resourceName,
    required this.resourceParentName,
    required this.resourceParentType,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': configurationAssignmentName,
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'resourceParentName': resourceParentName,
      'resourceParentType': resourceParentType,
      'resourceType': resourceType,
    };
  }

  factory GetConfigurationAssignmentParentArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationAssignmentParentArgs(
      configurationAssignmentName: (map['configurationAssignmentName'] as String).input(),
      providerName: (map['providerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      resourceParentName: (map['resourceParentName'] as String).input(),
      resourceParentType: (map['resourceParentType'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

