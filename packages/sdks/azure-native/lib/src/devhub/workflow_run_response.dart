// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowRunResponse {
  /// The timestamp of the last workflow run.
  final pulumi.Input<String> lastRunAt;
  /// Describes if the workflow run succeeded.
  final pulumi.Input<bool> succeeded;
  /// Describes the status of the workflow run
  final pulumi.Input<String>? workflowRunStatus;
  /// URL to the run of the workflow.
  final pulumi.Input<String> workflowRunURL;

  /// Creates a new [WorkflowRunResponse].
  /// [lastRunAt] The timestamp of the last workflow run.
  /// [succeeded] Describes if the workflow run succeeded.
  /// [workflowRunStatus] Describes the status of the workflow run
  /// [workflowRunURL] URL to the run of the workflow.
  const WorkflowRunResponse({
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
      lastRunAt: pulumi.Input.fromValue(map['lastRunAt'] as String),
      succeeded: pulumi.Input.fromValue(map['succeeded'] as bool),
      workflowRunStatus: (() { final guardedValue = map['workflowRunStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflowRunURL: pulumi.Input.fromValue(map['workflowRunURL'] as String),
    );
  }
}
