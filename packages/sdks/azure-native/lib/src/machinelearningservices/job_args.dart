// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_mljob.dart';

/// {@template pulumi_machinelearningservices_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_job_args_doc}
class JobArgs {
  /// The name and identifier for the Job. This is case-sensitive.
  final pulumi.Input<String>? id;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<AutoMLJob> jobBaseProperties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [JobArgs].
  /// [id] The name and identifier for the Job. This is case-sensitive.
  /// [jobBaseProperties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  const JobArgs({
    this.id,
    required this.jobBaseProperties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'jobBaseProperties': pulumi.Input.mapInputValue<AutoMLJob, Map<String, dynamic>>(jobBaseProperties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobBaseProperties: pulumi.Input.fromValue(AutoMLJob.fromMap((map['jobBaseProperties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

