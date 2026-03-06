// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_labeling_job_args_doc}
/// Arguments for getLabelingJob.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_labeling_job_args_doc}
class GetLabelingJobArgs {
  /// The name and identifier for the LabelingJob.
  final pulumi.Input<String> id;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetLabelingJobArgs].
  /// [id] The name and identifier for the LabelingJob.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const GetLabelingJobArgs({
    required this.id,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetLabelingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetLabelingJobArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

