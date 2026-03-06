// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_component_version_args_doc}
/// The set of arguments for ComponentVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_component_version_args_doc}
class ComponentVersionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ComponentVersionMachinelearningservices> componentVersionProperties;
  /// Container name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ComponentVersionArgs].
  /// [componentVersionProperties] [Required] Additional attributes of the entity.
  /// [name] Container name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const ComponentVersionArgs({
    required this.componentVersionProperties,
    required this.name,
    required this.resourceGroupName,
    this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentVersionProperties': componentVersionProperties,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory ComponentVersionArgs.fromMap(Map<String, dynamic> map) {
    return ComponentVersionArgs(
      componentVersionProperties: pulumi.Input.fromValue(map['componentVersionProperties'] as ComponentVersionMachinelearningservices),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

