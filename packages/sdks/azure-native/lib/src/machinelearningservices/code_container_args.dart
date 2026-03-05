// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_code_container_args_doc}
/// The set of arguments for CodeContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_code_container_args_doc}
class CodeContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeContainerMachinelearningservices> codeContainerProperties;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [CodeContainerArgs].
  /// [codeContainerProperties] [Required] Additional attributes of the entity.
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  CodeContainerArgs({
    required this.codeContainerProperties,
    this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeContainerProperties': codeContainerProperties,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory CodeContainerArgs.fromMap(Map<String, dynamic> map) {
    return CodeContainerArgs(
      codeContainerProperties: pulumi.Input.fromValue(map['codeContainerProperties'] as CodeContainerMachinelearningservices),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

