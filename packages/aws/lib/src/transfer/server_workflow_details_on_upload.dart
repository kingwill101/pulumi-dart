// ignore_for_file: unused_element, unnecessary_cast

class ServerWorkflowDetailsOnUpload {
  /// Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can assume, so that all workflow steps can operate on the required resources.
  final String executionRole;

  /// A unique identifier for the workflow.
  final String workflowId;

  /// Creates a new [ServerWorkflowDetailsOnUpload].
  /// [executionRole] Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can assume, so that all workflow steps can operate on the required resources.
  /// [workflowId] A unique identifier for the workflow.
  ServerWorkflowDetailsOnUpload({
    required this.executionRole,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionRole'] = executionRole;
    map['workflowId'] = workflowId;
    return map;
  }

  factory ServerWorkflowDetailsOnUpload.fromMap(Map<String, dynamic> map) {
    return ServerWorkflowDetailsOnUpload(
      executionRole: map['executionRole'] as String,
      workflowId: map['workflowId'] as String,
    );
  }
}
