// ignore_for_file: unused_element, unnecessary_cast


class WorkflowRunResponse {
  /// The timestamp of the last workflow run.
  final String lastRunAt;
  /// Describes if the workflow run succeeded.
  final bool succeeded;
  /// Describes the status of the workflow run
  final String? workflowRunStatus;
  /// URL to the run of the workflow.
  final String workflowRunURL;

  /// Creates a new [WorkflowRunResponse].
  /// [lastRunAt] The timestamp of the last workflow run.
  /// [succeeded] Describes if the workflow run succeeded.
  /// [workflowRunStatus] Describes the status of the workflow run
  /// [workflowRunURL] URL to the run of the workflow.
  WorkflowRunResponse({
    required this.lastRunAt,
    required this.succeeded,
    this.workflowRunStatus,
    required this.workflowRunURL,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastRunAt': lastRunAt,
      'succeeded': succeeded,
      'workflowRunStatus': ?workflowRunStatus,
      'workflowRunURL': workflowRunURL,
    };
  }

  factory WorkflowRunResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowRunResponse(
      lastRunAt: map['lastRunAt'] as String,
      succeeded: map['succeeded'] as bool,
      workflowRunStatus: map['workflowRunStatus'] == null ? null : map['workflowRunStatus'] as String,
      workflowRunURL: map['workflowRunURL'] as String,
    );
  }
}

