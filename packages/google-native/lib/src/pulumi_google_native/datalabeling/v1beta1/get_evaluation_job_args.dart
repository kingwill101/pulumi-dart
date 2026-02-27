// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEvaluationJob.
class GetEvaluationJobArgs {
  final pulumi.Input<String> evaluationJobId;
  final pulumi.Input<String>? project;

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
      evaluationJobId: pulumi.Input.asInput<String>(map['evaluationJobId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
