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
    pulumi.Output<String>? configurationProfileAssignmentName,
    required pulumi.Output<String> machineName,
    pulumi.Output<ConfigurationProfileAssignmentProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configurationProfileAssignmentName = pulumi.Input.asOptionalInput<String>(configurationProfileAssignmentName),
      machineName = pulumi.Input.asInput<String>(machineName),
      properties = pulumi.Input.asOptionalInput<ConfigurationProfileAssignmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      configurationProfileAssignmentName: map['configurationProfileAssignmentName'] == null ? null : pulumi.Output.create<String>(map['configurationProfileAssignmentName'] as String),
      machineName: pulumi.Output.create<String>(map['machineName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<ConfigurationProfileAssignmentProperties>(ConfigurationProfileAssignmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

