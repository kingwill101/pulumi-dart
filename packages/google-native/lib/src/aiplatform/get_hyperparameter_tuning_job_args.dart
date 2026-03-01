// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_hyperparameter_tuning_job_args_doc}
/// Arguments for getHyperparameterTuningJob.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_hyperparameter_tuning_job_args_doc}
class GetHyperparameterTuningJobArgs {
  final pulumi.Input<String> hyperparameterTuningJobId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHyperparameterTuningJobArgs].
  /// [hyperparameterTuningJobId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetHyperparameterTuningJobArgs({
    required String hyperparameterTuningJobId,
    required String location,
    String? project,
  }) : hyperparameterTuningJobId = pulumi.Input.asInput<String>(
         hyperparameterTuningJobId,
       ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperparameterTuningJobId': hyperparameterTuningJobId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetHyperparameterTuningJobArgs.fromMap(Map<String, dynamic> map) {
    return GetHyperparameterTuningJobArgs(
      hyperparameterTuningJobId: map['hyperparameterTuningJobId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
