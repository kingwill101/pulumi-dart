// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_component_container_args_doc}
/// The set of arguments for ComponentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_component_container_args_doc}
class ComponentContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentContainerMachinelearningservices> componentContainerProperties;
  /// Container name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ComponentContainerArgs].
  /// [componentContainerProperties] [Required] Additional attributes of the entity.
  /// [name] Container name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ComponentContainerArgs({
    required pulumi.Output<ComponentContainerMachinelearningservices> componentContainerProperties,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      componentContainerProperties = pulumi.Input.asInput<ComponentContainerMachinelearningservices>(componentContainerProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentContainerProperties': componentContainerProperties,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ComponentContainerArgs.fromMap(Map<String, dynamic> map) {
    return ComponentContainerArgs(
      componentContainerProperties: pulumi.Output.create<ComponentContainerMachinelearningservices>(map['componentContainerProperties'] as ComponentContainerMachinelearningservices),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

