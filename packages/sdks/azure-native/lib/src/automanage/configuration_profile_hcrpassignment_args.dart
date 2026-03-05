// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_assignment_properties.dart';

/// {@template pulumi_automanage_configuration_profile_hcrpassignment_args_doc}
/// The set of arguments for ConfigurationProfileHCRPAssignment.
/// {@endtemplate}
/// {@macro pulumi_automanage_configuration_profile_hcrpassignment_args_doc}
class ConfigurationProfileHCRPAssignmentArgs {
  /// Name of the configuration profile assignment. Only default is supported.
  final pulumi.Input<String>? configurationProfileAssignmentName;
  /// The name of the Arc machine.
  final pulumi.Input<String> machineName;
  /// Properties of the configuration profile assignment.
  final pulumi.Input<ConfigurationProfileAssignmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ConfigurationProfileHCRPAssignmentArgs].
  /// [configurationProfileAssignmentName] Name of the configuration profile assignment. Only default is supported.
  /// [machineName] The name of the Arc machine.
  /// [properties] Properties of the configuration profile assignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ConfigurationProfileHCRPAssignmentArgs({
    this.configurationProfileAssignmentName,
    required this.machineName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileAssignmentName': ?configurationProfileAssignmentName,
      'machineName': machineName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationProfileAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ConfigurationProfileHCRPAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileHCRPAssignmentArgs(
      configurationProfileAssignmentName: (() { final guardedValue = map['configurationProfileAssignmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineName: pulumi.Input.fromValue(map['machineName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigurationProfileAssignmentProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

