// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_container_properties.dart';

/// {@template pulumi_machinelearningservices_code_container_args_doc}
/// The set of arguments for CodeContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_code_container_args_doc}
class CodeContainerArgs {
  /// Container name. This is case-sensitive.
  final pulumi.Input<String>? name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeContainerProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [CodeContainerArgs].
  /// [name] Container name. This is case-sensitive.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const CodeContainerArgs({
    this.name,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<CodeContainerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory CodeContainerArgs.fromMap(Map<String, dynamic> map) {
    return CodeContainerArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(CodeContainerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
