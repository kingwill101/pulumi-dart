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
  GetMachineLearningDatasetArgs({
    required String datasetName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      datasetName = pulumi.Input.asInput<String>(datasetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': datasetName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetMachineLearningDatasetArgs.fromMap(Map<String, dynamic> map) {
    return GetMachineLearningDatasetArgs(
      datasetName: map['datasetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

