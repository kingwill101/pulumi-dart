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
    required pulumi.Output<String> configurationAssignmentName,
    required pulumi.Output<String> providerName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    required pulumi.Output<String> resourceParentName,
    required pulumi.Output<String> resourceParentType,
    required pulumi.Output<String> resourceType,
  }) :
      configurationAssignmentName = pulumi.Input.asInput<String>(configurationAssignmentName),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceParentName = pulumi.Input.asInput<String>(resourceParentName),
      resourceParentType = pulumi.Input.asInput<String>(resourceParentType),
      resourceType = pulumi.Input.asInput<String>(resourceType);

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
      configurationAssignmentName: pulumi.Output.create<String>(map['configurationAssignmentName'] as String),
      providerName: pulumi.Output.create<String>(map['providerName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      resourceParentName: pulumi.Output.create<String>(map['resourceParentName'] as String),
      resourceParentType: pulumi.Output.create<String>(map['resourceParentType'] as String),
      resourceType: pulumi.Output.create<String>(map['resourceType'] as String),
    );
  }
}

