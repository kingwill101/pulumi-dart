// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'featurestore_entity_version_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_featurestore_entity_version_args_doc}
/// The set of arguments for FeaturestoreEntityVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_featurestore_entity_version_args_doc}
class FeaturestoreEntityVersionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<FeaturestoreEntityVersionMachinelearningservices> featurestoreEntityVersionProperties;
  /// Container name. This is case-sensitive.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier. This is case-sensitive.
  final pulumi.Input<String>? version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [FeaturestoreEntityVersionArgs].
  /// [featurestoreEntityVersionProperties] [Required] Additional attributes of the entity.
  /// [name] Container name. This is case-sensitive.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier. This is case-sensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const FeaturestoreEntityVersionArgs({
    required this.featurestoreEntityVersionProperties,
    required this.name,
    required this.resourceGroupName,
    this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featurestoreEntityVersionProperties': featurestoreEntityVersionProperties,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory FeaturestoreEntityVersionArgs.fromMap(Map<String, dynamic> map) {
    return FeaturestoreEntityVersionArgs(
      featurestoreEntityVersionProperties: pulumi.Input.fromValue(map['featurestoreEntityVersionProperties'] as FeaturestoreEntityVersionMachinelearningservices),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

