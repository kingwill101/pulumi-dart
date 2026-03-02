// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_assignment_filter_properties.dart';

/// {@template pulumi_maintenance_configuration_assignment_parent_args_doc}
/// The set of arguments for ConfigurationAssignmentParent.
/// {@endtemplate}
/// {@macro pulumi_maintenance_configuration_assignment_parent_args_doc}
class ConfigurationAssignmentParentArgs {
  /// The name of the ConfigurationAssignment
  final pulumi.Input<String>? configurationAssignmentName;
  /// Properties of the configuration assignment
  final pulumi.Input<ConfigurationAssignmentFilterProperties>? filter;
  /// Location of the resource
  final pulumi.Input<String>? location;
  /// The maintenance configuration Id
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// Resource provider name
  final pulumi.Input<String> providerName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The unique resourceId
  final pulumi.Input<String>? resourceId;
  /// Resource name
  final pulumi.Input<String> resourceName;
  /// Resource parent name
  final pulumi.Input<String> resourceParentName;
  /// Resource parent type
  final pulumi.Input<String> resourceParentType;
  /// Resource type
  final pulumi.Input<String> resourceType;

  /// Creates a new [ConfigurationAssignmentParentArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  /// [filter] Properties of the configuration assignment
  /// [location] Location of the resource
  /// [maintenanceConfigurationId] The maintenance configuration Id
  /// [providerName] Resource provider name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] The unique resourceId
  /// [resourceName] Resource name
  /// [resourceParentName] Resource parent name
  /// [resourceParentType] Resource parent type
  /// [resourceType] Resource type
  ConfigurationAssignmentParentArgs({
    this.configurationAssignmentName,
    this.filter,
    this.location,
    this.maintenanceConfigurationId,
    required this.providerName,
    required this.resourceGroupName,
    this.resourceId,
    required this.resourceName,
    required this.resourceParentName,
    required this.resourceParentType,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': ?configurationAssignmentName,
      'filter': ?pulumi.Input.mapOptionalInputValue<ConfigurationAssignmentFilterProperties, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'providerName': providerName,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
      'resourceName': resourceName,
      'resourceParentName': resourceParentName,
      'resourceParentType': resourceParentType,
      'resourceType': resourceType,
    };
  }

  factory ConfigurationAssignmentParentArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationAssignmentParentArgs(
      configurationAssignmentName: map['configurationAssignmentName'] == null ? null : (map['configurationAssignmentName'] as String).input(),
      filter: map['filter'] == null ? null : (ConfigurationAssignmentFilterProperties.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : (map['maintenanceConfigurationId'] as String).input(),
      providerName: (map['providerName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      resourceParentName: (map['resourceParentName'] as String).input(),
      resourceParentType: (map['resourceParentType'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

