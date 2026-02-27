// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEvaluation.
class GetEvaluationWorkloadmanagerV1Args {
  final pulumi.Input<String> evaluationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetEvaluationWorkloadmanagerV1Args({
    required this.evaluationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationId'] = evaluationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEvaluationWorkloadmanagerV1Args.fromMap(Map<String, dynamic> map) {
    return GetEvaluationWorkloadmanagerV1Args(
      evaluationId: pulumi.Input.asInput<String>(map['evaluationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
