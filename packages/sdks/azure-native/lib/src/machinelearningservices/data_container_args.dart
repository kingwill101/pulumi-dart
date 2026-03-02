// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_container_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_data_container_args_doc}
/// The set of arguments for DataContainer.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_data_container_args_doc}
class DataContainerArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<DataContainerMachinelearningservices> dataContainerProperties;
  /// Container name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DataContainerArgs].
  /// [dataContainerProperties] [Required] Additional attributes of the entity.
  /// [name] Container name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  DataContainerArgs({
    required this.dataContainerProperties,
    this.name,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataContainerProperties': dataContainerProperties,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory DataContainerArgs.fromMap(Map<String, dynamic> map) {
    return DataContainerArgs(
      dataContainerProperties: (map['dataContainerProperties'] as DataContainerMachinelearningservices).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

