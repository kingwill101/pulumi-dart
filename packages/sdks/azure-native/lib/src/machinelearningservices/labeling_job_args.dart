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
  const LabelingJobArgs({
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
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labelingJobProperties: pulumi.Input.fromValue(map['labelingJobProperties'] as LabelingJobMachinelearningservices),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

