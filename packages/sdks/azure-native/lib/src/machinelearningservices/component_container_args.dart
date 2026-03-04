// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_component_container_args_doc}
/// The set of arguments for ComponentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_component_container_args_doc}
class ComponentContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentContainerMachinelearningservices>
  componentContainerProperties;

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
    required this.componentContainerProperties,
    this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

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
      componentContainerProperties: pulumi.Input.fromValue(
        map['componentContainerProperties']
            as ComponentContainerMachinelearningservices,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
