// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getEvaluationJob.
class GetEvaluationJobArgs {
  final Input<String> evaluationJobId;
  final Input<String>? project;

  GetEvaluationJobArgs({
    required this.evaluationJobId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['evaluationJobId'] = evaluationJobId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetEvaluationJobArgs.fromMap(Map<String, dynamic> map) {
    return GetEvaluationJobArgs(
      evaluationJobId: Input.asInput<String>(map['evaluationJobId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
