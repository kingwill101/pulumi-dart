// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mltable_data.dart';

/// {@template pulumi_machinelearningservices_data_version_args_doc}
/// The set of arguments for DataVersion.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_data_version_args_doc}
class DataVersionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<MLTableData> dataVersionBaseProperties;
  /// Container name.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Version identifier.
  final pulumi.Input<String>? version;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DataVersionArgs].
  /// [dataVersionBaseProperties] [Required] Additional attributes of the entity.
  /// [name] Container name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [version] Version identifier.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const DataVersionArgs({
    required this.dataVersionBaseProperties,
    required this.name,
    required this.resourceGroupName,
    this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataVersionBaseProperties': pulumi.Input.mapInputValue<MLTableData, Map<String, dynamic>>(dataVersionBaseProperties, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'version': ?version,
      'workspaceName': workspaceName,
    };
  }

  factory DataVersionArgs.fromMap(Map<String, dynamic> map) {
    return DataVersionArgs(
      dataVersionBaseProperties: pulumi.Input.fromValue(MLTableData.fromMap((map['dataVersionBaseProperties']! as Map).cast<String, dynamic>())),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

