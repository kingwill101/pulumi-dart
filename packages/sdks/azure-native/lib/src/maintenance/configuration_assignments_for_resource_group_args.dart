// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_assignment_filter_properties.dart';

/// {@template pulumi_maintenance_configuration_assignments_for_resource_group_args_doc}
/// The set of arguments for ConfigurationAssignmentsForResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_maintenance_configuration_assignments_for_resource_group_args_doc}
class ConfigurationAssignmentsForResourceGroupArgs {
  /// The name of the ConfigurationAssignment
  final pulumi.Input<String>? configurationAssignmentName;
  /// Properties of the configuration assignment
  final pulumi.Input<ConfigurationAssignmentFilterProperties>? filter;
  /// Location of the resource
  final pulumi.Input<String>? location;
  /// The maintenance configuration Id
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The unique resourceId
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ConfigurationAssignmentsForResourceGroupArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  /// [filter] Properties of the configuration assignment
  /// [location] Location of the resource
  /// [maintenanceConfigurationId] The maintenance configuration Id
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] The unique resourceId
  ConfigurationAssignmentsForResourceGroupArgs({
    this.configurationAssignmentName,
    this.filter,
    this.location,
    this.maintenanceConfigurationId,
    required this.resourceGroupName,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': ?configurationAssignmentName,
      'filter': ?pulumi.Input.mapOptionalInputValue<ConfigurationAssignmentFilterProperties, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'resourceGroupName': resourceGroupName,
      'resourceId': ?resourceId,
    };
  }

  factory ConfigurationAssignmentsForResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationAssignmentsForResourceGroupArgs(
      configurationAssignmentName: map['configurationAssignmentName'] == null ? null : (map['configurationAssignmentName']! as String).input(),
      filter: map['filter'] == null ? null : (ConfigurationAssignmentFilterProperties.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : (map['maintenanceConfigurationId']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

