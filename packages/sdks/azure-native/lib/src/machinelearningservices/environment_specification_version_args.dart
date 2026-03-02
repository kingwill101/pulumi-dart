// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_specification_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_environment_specification_version_args_doc}
/// The set of arguments for EnvironmentSpecificationVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_environment_specification_version_args_doc}
class EnvironmentSpecificationVersionArgs {
  /// Name of EnvironmentSpecificationVersion.
  final pulumi.Input<String> name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<EnvironmentSpecificationVersionMachinelearningservices> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version of EnvironmentSpecificationVersion.
  final pulumi.Input<String>? version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EnvironmentSpecificationVersionArgs].
  /// [name] Name of EnvironmentSpecificationVersion.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version of EnvironmentSpecificationVersion.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  EnvironmentSpecificationVersionArgs({
    required this.name,
    required this.properties,
    required this.resourceGroupName,
    this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory EnvironmentSpecificationVersionArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentSpecificationVersionArgs(
      name: (map['name'] as String).input(),
      properties: (map['properties'] as EnvironmentSpecificationVersionMachinelearningservices).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

