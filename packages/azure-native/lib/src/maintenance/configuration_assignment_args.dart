// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_assignment_filter_properties.dart';

/// {@template pulumi_maintenance_configuration_assignment_args_doc}
/// The set of arguments for ConfigurationAssignment.
/// {@endtemplate}
/// {@macro pulumi_maintenance_configuration_assignment_args_doc}
class ConfigurationAssignmentArgs {
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
  /// Resource parent name
  final pulumi.Input<String> resourceName;
  /// Resource parent type
  final pulumi.Input<String> resourceType;

  /// Creates a new [ConfigurationAssignmentArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  /// [filter] Properties of the configuration assignment
  /// [location] Location of the resource
  /// [maintenanceConfigurationId] The maintenance configuration Id
  /// [providerName] Resource provider name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceId] The unique resourceId
  /// [resourceName] Resource parent name
  /// [resourceType] Resource parent type
  ConfigurationAssignmentArgs({
    String? configurationAssignmentName,
    ConfigurationAssignmentFilterProperties? filter,
    String? location,
    String? maintenanceConfigurationId,
    required String providerName,
    required String resourceGroupName,
    String? resourceId,
    required String resourceName,
    required String resourceType,
  }) :
      configurationAssignmentName = pulumi.Input.asOptionalInput<String>(configurationAssignmentName),
      filter = pulumi.Input.asOptionalInput<ConfigurationAssignmentFilterProperties>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId),
      providerName = pulumi.Input.asInput<String>(providerName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      resourceType = pulumi.Input.asInput<String>(resourceType);

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
      'resourceType': resourceType,
    };
  }

  factory ConfigurationAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationAssignmentArgs(
      configurationAssignmentName: map['configurationAssignmentName'] == null ? null : map['configurationAssignmentName'] as String,
      filter: map['filter'] == null ? null : ConfigurationAssignmentFilterProperties.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : map['maintenanceConfigurationId'] as String,
      providerName: map['providerName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      resourceName: map['resourceName'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

