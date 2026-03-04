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
    this.configurationAssignmentName,
    this.filter,
    this.location,
    this.maintenanceConfigurationId,
    required this.providerName,
    required this.resourceGroupName,
    this.resourceId,
    required this.resourceName,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': ?configurationAssignmentName,
      'filter':
          ?pulumi.Input.mapOptionalInputValue<
            ConfigurationAssignmentFilterProperties,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
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
      configurationAssignmentName: (() {
        final guardedValue = map['configurationAssignmentName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConfigurationAssignmentFilterProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maintenanceConfigurationId: (() {
        final guardedValue = map['maintenanceConfigurationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providerName: pulumi.Input.fromValue(map['providerName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}
