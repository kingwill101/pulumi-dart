// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_environment_version_args_doc}
/// The set of arguments for EnvironmentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_environment_version_args_doc}
class EnvironmentVersionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<EnvironmentVersionMachinelearningservices> environmentVersionProperties;
  /// Name of EnvironmentVersion. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version of EnvironmentVersion.
  final pulumi.Input<String>? version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EnvironmentVersionArgs].
  /// [environmentVersionProperties] [Required] Additional attributes of the entity.
  /// [name] Name of EnvironmentVersion. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version of EnvironmentVersion.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  EnvironmentVersionArgs({
    required this.environmentVersionProperties,
    required this.name,
    required this.resourceGroupName,
    this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentVersionProperties': environmentVersionProperties,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory EnvironmentVersionArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentVersionArgs(
      environmentVersionProperties: (map['environmentVersionProperties'] as EnvironmentVersionMachinelearningservices).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

