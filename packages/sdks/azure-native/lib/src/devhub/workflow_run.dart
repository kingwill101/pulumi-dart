// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowRun {
  /// Describes the status of the workflow run
  final pulumi.Input<dynamic>? workflowRunStatus;

  /// Creates a new [WorkflowRun].
  /// [workflowRunStatus] Describes the status of the workflow run
  const WorkflowRun({
    this.workflowRunStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workflowRunStatus': ?workflowRunStatus,
    };
  }

  factory WorkflowRun.fromMap(Map<String, dynamic> map) {
    return WorkflowRun(
      workflowRunStatus: (() { final guardedValue = map['workflowRunStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
