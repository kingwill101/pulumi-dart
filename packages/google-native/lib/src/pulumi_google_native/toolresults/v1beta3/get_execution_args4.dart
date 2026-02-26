// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getExecution.
class GetExecutionArgs4 {
  final Input<String> executionId;
  final Input<String> historyId;
  final Input<String>? project;

  GetExecutionArgs4({
    required this.executionId,
    required this.historyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetExecutionArgs4.fromMap(Map<String, dynamic> map) {
    return GetExecutionArgs4(
      executionId: Input.asInput<String>(map['executionId']),
      historyId: Input.asInput<String>(map['historyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
