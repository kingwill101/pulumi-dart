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
    required pulumi.Output<String> clusterName,
    pulumi.Output<String>? configurationProfileAssignmentName,
    pulumi.Output<ConfigurationProfileAssignmentProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      configurationProfileAssignmentName = pulumi.Input.asOptionalInput<String>(configurationProfileAssignmentName),
      properties = pulumi.Input.asOptionalInput<ConfigurationProfileAssignmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      clusterName: pulumi.Output.create<String>(map['clusterName'] as String),
      configurationProfileAssignmentName: map['configurationProfileAssignmentName'] == null ? null : pulumi.Output.create<String>(map['configurationProfileAssignmentName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ConfigurationProfileAssignmentProperties>(ConfigurationProfileAssignmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

