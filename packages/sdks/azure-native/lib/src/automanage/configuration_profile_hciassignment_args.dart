// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_assignment_properties.dart';

/// {@template pulumi_automanage_configuration_profile_hciassignment_args_doc}
/// The set of arguments for ConfigurationProfileHCIAssignment.
/// {@endtemplate}
/// {@macro pulumi_automanage_configuration_profile_hciassignment_args_doc}
class ConfigurationProfileHCIAssignmentArgs {
  /// The name of the Arc machine.
  final pulumi.Input<String> clusterName;
  /// Name of the configuration profile assignment. Only default is supported.
  final pulumi.Input<String>? configurationProfileAssignmentName;
  /// Properties of the configuration profile assignment.
  final pulumi.Input<ConfigurationProfileAssignmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConfigurationProfileHCIAssignmentArgs].
  /// [clusterName] The name of the Arc machine.
  /// [configurationProfileAssignmentName] Name of the configuration profile assignment. Only default is supported.
  /// [properties] Properties of the configuration profile assignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ConfigurationProfileHCIAssignmentArgs({
    required this.clusterName,
    this.configurationProfileAssignmentName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'configurationProfileAssignmentName': ?configurationProfileAssignmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationProfileAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConfigurationProfileHCIAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileHCIAssignmentArgs(
      clusterName: (map['clusterName'] as String).input(),
      configurationProfileAssignmentName: map['configurationProfileAssignmentName'] == null ? null : (map['configurationProfileAssignmentName']! as String).input(),
      properties: map['properties'] == null ? null : (ConfigurationProfileAssignmentProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

