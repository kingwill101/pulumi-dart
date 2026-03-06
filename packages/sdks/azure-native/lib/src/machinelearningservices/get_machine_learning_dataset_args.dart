// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_machine_learning_dataset_args_doc}
/// Arguments for getMachineLearningDataset.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_machine_learning_dataset_args_doc}
class GetMachineLearningDatasetArgs {
  /// The Dataset name.
  final pulumi.Input<String> datasetName;
  /// Name of the resource group in which workspace is located.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetMachineLearningDatasetArgs].
  /// [datasetName] The Dataset name.
  /// [resourceGroupName] Name of the resource group in which workspace is located.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const GetMachineLearningDatasetArgs({
    required this.datasetName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': datasetName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetMachineLearningDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineLearningDatasetArgs(
      datasetName: pulumi.Input.fromValue(map['datasetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

