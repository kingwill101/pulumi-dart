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
    required pulumi.Output<DataContainerMachinelearningservices> dataContainerProperties,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      dataContainerProperties = pulumi.Input.asInput<DataContainerMachinelearningservices>(dataContainerProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      dataContainerProperties: pulumi.Output.create<DataContainerMachinelearningservices>(map['dataContainerProperties'] as DataContainerMachinelearningservices),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

