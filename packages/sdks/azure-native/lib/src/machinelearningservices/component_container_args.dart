// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_container_properties.dart';

/// {@template pulumi_machinelearningservices_component_container_args_doc}
/// The set of arguments for ComponentContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_component_container_args_doc}
class ComponentContainerArgs {
  /// Container name.
  final pulumi.Input<String?>? name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentContainerProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ComponentContainerArgs].
  /// [name] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const ComponentContainerArgs({
    this.name,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<ComponentContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ComponentContainerArgs.fromMap(Map<String, dynamic> map) {
    return ComponentContainerArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(ComponentContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
