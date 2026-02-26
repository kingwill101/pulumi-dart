// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEvaluation.
class GetEvaluationArgs {
  final Input<String> conversationModelId;
  final Input<String> evaluationId;
  final Input<String> location;
  final Input<String>? project;

  GetEvaluationArgs({
    required this.conversationModelId,
    required this.evaluationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationModelId'] = conversationModelId;
    map['evaluationId'] = evaluationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEvaluationArgs.fromMap(Map<String, dynamic> map) {
    return GetEvaluationArgs(
      conversationModelId: Input.asInput<String>(map['conversationModelId']),
      evaluationId: Input.asInput<String>(map['evaluationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
