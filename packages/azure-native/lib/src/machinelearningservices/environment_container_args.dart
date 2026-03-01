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
    required EnvironmentContainerMachinelearningservices environmentContainerProperties,
    String? name,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      environmentContainerProperties = pulumi.Input.asInput<EnvironmentContainerMachinelearningservices>(environmentContainerProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      environmentContainerProperties: map['environmentContainerProperties'] as EnvironmentContainerMachinelearningservices,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

