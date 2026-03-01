// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_assignment_filter_properties.dart';

/// {@template pulumi_maintenance_configuration_assignments_for_subscription_args_doc}
/// The set of arguments for ConfigurationAssignmentsForSubscription.
/// {@endtemplate}
/// {@macro pulumi_maintenance_configuration_assignments_for_subscription_args_doc}
class ConfigurationAssignmentsForSubscriptionArgs {
  /// The name of the ConfigurationAssignment
  final pulumi.Input<String>? configurationAssignmentName;
  /// Properties of the configuration assignment
  final pulumi.Input<ConfigurationAssignmentFilterProperties>? filter;
  /// Location of the resource
  final pulumi.Input<String>? location;
  /// The maintenance configuration Id
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// The unique resourceId
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ConfigurationAssignmentsForSubscriptionArgs].
  /// [configurationAssignmentName] The name of the ConfigurationAssignment
  /// [filter] Properties of the configuration assignment
  /// [location] Location of the resource
  /// [maintenanceConfigurationId] The maintenance configuration Id
  /// [resourceId] The unique resourceId
  ConfigurationAssignmentsForSubscriptionArgs({
    pulumi.Output<String>? configurationAssignmentName,
    pulumi.Output<ConfigurationAssignmentFilterProperties>? filter,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maintenanceConfigurationId,
    pulumi.Output<String>? resourceId,
  }) :
      configurationAssignmentName = pulumi.Input.asOptionalInput<String>(configurationAssignmentName),
      filter = pulumi.Input.asOptionalInput<ConfigurationAssignmentFilterProperties>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId),
      resourceId = pulumi.Input.asOptionalInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationAssignmentName': ?configurationAssignmentName,
      'filter': ?pulumi.Input.mapOptionalInputValue<ConfigurationAssignmentFilterProperties, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'resourceId': ?resourceId,
    };
  }

  factory ConfigurationAssignmentsForSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationAssignmentsForSubscriptionArgs(
      configurationAssignmentName: map['configurationAssignmentName'] == null ? null : pulumi.Output.create<String>(map['configurationAssignmentName'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<ConfigurationAssignmentFilterProperties>(ConfigurationAssignmentFilterProperties.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : pulumi.Output.create<String>(map['maintenanceConfigurationId'] as String),
      resourceId: map['resourceId'] == null ? null : pulumi.Output.create<String>(map['resourceId'] as String),
    );
  }
}

