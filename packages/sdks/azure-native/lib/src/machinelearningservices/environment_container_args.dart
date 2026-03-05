// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_environment_container_args_doc}
/// The set of arguments for EnvironmentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_environment_container_args_doc}
class EnvironmentContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<EnvironmentContainerMachinelearningservices> environmentContainerProperties;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [EnvironmentContainerArgs].
  /// [environmentContainerProperties] [Required] Additional attributes of the entity.
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  EnvironmentContainerArgs({
    required this.environmentContainerProperties,
    this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentContainerProperties': environmentContainerProperties,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory EnvironmentContainerArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentContainerArgs(
      environmentContainerProperties: pulumi.Input.fromValue(map['environmentContainerProperties'] as EnvironmentContainerMachinelearningservices),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

