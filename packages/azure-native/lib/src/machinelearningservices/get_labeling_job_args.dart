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
  GetLabelingJobArgs({
    required String id,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      id = pulumi.Input.asInput<String>(id),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetLabelingJobArgs.fromMap(Map<String, dynamic> map) {
    return GetLabelingJobArgs(
      id: map['id'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

