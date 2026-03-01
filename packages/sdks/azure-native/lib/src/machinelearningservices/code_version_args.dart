// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_code_version_args_doc}
/// The set of arguments for CodeVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_code_version_args_doc}
class CodeVersionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<CodeVersionMachinelearningservices> codeVersionProperties;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String>? version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [CodeVersionArgs].
  /// [codeVersionProperties] [Required] Additional attributes of the entity.
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  CodeVersionArgs({
    required pulumi.Output<CodeVersionMachinelearningservices> codeVersionProperties,
    required pulumi.Output<String> name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? version,
    required pulumi.Output<String> workspaceName,
  }) :
      codeVersionProperties = pulumi.Input.asInput<CodeVersionMachinelearningservices>(codeVersionProperties),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      version = pulumi.Input.asOptionalInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeVersionProperties': codeVersionProperties,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory CodeVersionArgs.fromMap(Map<String, dynamic> map) {
    return CodeVersionArgs(
      codeVersionProperties: pulumi.Output.create<CodeVersionMachinelearningservices>(map['codeVersionProperties'] as CodeVersionMachinelearningservices),
      name: pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

