// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEvaluation.
class GetEvaluationArgs {
  final pulumi.Input<String> conversationModelId;
  final pulumi.Input<String> evaluationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      conversationModelId:
          pulumi.Input.asInput<String>(map['conversationModelId']),
      evaluationId: pulumi.Input.asInput<String>(map['evaluationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
