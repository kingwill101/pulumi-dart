// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_workloadmanager_v1_get_evaluation_args_doc}
/// Arguments for getEvaluation.
/// {@endtemplate}
/// {@macro pulumi_workloadmanager_v1_get_evaluation_args_doc}
class GetEvaluationArgs {
  final pulumi.Input<String> evaluationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEvaluationArgs].
  /// [evaluationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEvaluationArgs({
    required String evaluationId,
    required String location,
    String? project,
  }) : evaluationId = pulumi.Input.asInput<String>(evaluationId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationId': evaluationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return GetEvaluationArgs(
      evaluationId: map['evaluationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
