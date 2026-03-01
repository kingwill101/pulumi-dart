// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_profile_assignment_properties.dart';

/// {@template pulumi_automanage_configuration_profile_assignment_args_doc}
/// The set of arguments for ConfigurationProfileAssignment.
/// {@endtemplate}
/// {@macro pulumi_automanage_configuration_profile_assignment_args_doc}
class ConfigurationProfileAssignmentArgs {
  /// Name of the configuration profile assignment. Only default is supported.
  final pulumi.Input<String>? configurationProfileAssignmentName;
  /// Properties of the configuration profile assignment.
  final pulumi.Input<ConfigurationProfileAssignmentProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine.
  final pulumi.Input<String> vmName;

  /// Creates a new [ConfigurationProfileAssignmentArgs].
  /// [configurationProfileAssignmentName] Name of the configuration profile assignment. Only default is supported.
  /// [properties] Properties of the configuration profile assignment.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vmName] The name of the virtual machine.
  ConfigurationProfileAssignmentArgs({
    String? configurationProfileAssignmentName,
    ConfigurationProfileAssignmentProperties? properties,
    required String resourceGroupName,
    required String vmName,
  }) :
      configurationProfileAssignmentName = pulumi.Input.asOptionalInput<String>(configurationProfileAssignmentName),
      properties = pulumi.Input.asOptionalInput<ConfigurationProfileAssignmentProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vmName = pulumi.Input.asInput<String>(vmName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationProfileAssignmentName': ?configurationProfileAssignmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ConfigurationProfileAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vmName': vmName,
    };
  }

  factory ConfigurationProfileAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationProfileAssignmentArgs(
      configurationProfileAssignmentName: map['configurationProfileAssignmentName'] == null ? null : map['configurationProfileAssignmentName'] as String,
      properties: map['properties'] == null ? null : ConfigurationProfileAssignmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      vmName: map['vmName'] as String,
    );
  }
}

