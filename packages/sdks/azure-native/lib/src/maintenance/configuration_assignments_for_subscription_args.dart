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
    this.configurationAssignmentName,
    this.filter,
    this.location,
    this.maintenanceConfigurationId,
    this.resourceId,
  });

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
      configurationAssignmentName: map['configurationAssignmentName'] == null ? null : (map['configurationAssignmentName']! as String).input(),
      filter: map['filter'] == null ? null : (ConfigurationAssignmentFilterProperties.fromMap((map['filter']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : (map['maintenanceConfigurationId']! as String).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

