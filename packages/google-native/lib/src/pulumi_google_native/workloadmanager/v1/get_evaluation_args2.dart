// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEvaluation.
class GetEvaluationArgs2 {
  final Input<String> evaluationId;
  final Input<String> location;
  final Input<String>? project;

  GetEvaluationArgs2({
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

  factory GetEvaluationArgs2.fromMap(Map<String, dynamic> map) {
    return GetEvaluationArgs2(
      evaluationId: Input.asInput<String>(map['evaluationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
