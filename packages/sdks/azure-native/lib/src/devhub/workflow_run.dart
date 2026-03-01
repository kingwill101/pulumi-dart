// ignore_for_file: unused_element, unnecessary_cast


class WorkflowRun {
  /// Describes the status of the workflow run
  final String? workflowRunStatus;

  /// Creates a new [WorkflowRun].
  /// [workflowRunStatus] Describes the status of the workflow run
  WorkflowRun({
    this.workflowRunStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'workflowRunStatus': ?workflowRunStatus,
    };
  }

  factory WorkflowRun.fromMap(Map<String, dynamic> map) {
    return WorkflowRun(
      workflowRunStatus: map['workflowRunStatus'] == null ? null : map['workflowRunStatus'] as String,
    );
  }
}

