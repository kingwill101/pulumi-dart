// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_model_version_args_doc}
/// The set of arguments for ModelVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_model_version_args_doc}
class ModelVersionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<ModelVersionMachinelearningservices> modelVersionProperties;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String>? version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ModelVersionArgs].
  /// [modelVersionProperties] [Required] Additional attributes of the entity.
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ModelVersionArgs({
    required this.modelVersionProperties,
    required this.name,
    required this.resourceGroupName,
    this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelVersionProperties': modelVersionProperties,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory ModelVersionArgs.fromMap(Map<String, dynamic> map) {
    return ModelVersionArgs(
      modelVersionProperties: (map['modelVersionProperties'] as ModelVersionMachinelearningservices).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

