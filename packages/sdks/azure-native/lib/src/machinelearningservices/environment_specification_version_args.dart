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
  const EnvironmentSpecificationVersionArgs({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: pulumi.Input.fromValue(map['properties'] as EnvironmentSpecificationVersionMachinelearningservices),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
