// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_labeling_job_args_doc}
/// The set of arguments for LabelingJob.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_labeling_job_args_doc}
class LabelingJobArgs {
  /// The name and identifier for the LabelingJob.
  final pulumi.Input<String>? id;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<LabelingJobMachinelearningservices> labelingJobProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [LabelingJobArgs].
  /// [id] The name and identifier for the LabelingJob.
  /// [labelingJobProperties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  LabelingJobArgs({
    this.id,
    required this.labelingJobProperties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'labelingJobProperties': labelingJobProperties,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory LabelingJobArgs.fromMap(Map<String, dynamic> map) {
    return LabelingJobArgs(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      labelingJobProperties: (map['labelingJobProperties'] as LabelingJobMachinelearningservices).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

