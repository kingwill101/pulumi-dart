// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerWorkflowDetailsOnPartialUpload {
  /// Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can assume, so that all workflow steps can operate on the required resources.
  final pulumi.Input<String> executionRole;
  /// A unique identifier for the workflow.
  final pulumi.Input<String> workflowId;

  /// Creates a new [ServerWorkflowDetailsOnPartialUpload].
  /// [executionRole] Includes the necessary permissions for S3, EFS, and Lambda operations that Transfer can assume, so that all workflow steps can operate on the required resources.
  /// [workflowId] A unique identifier for the workflow.
  ServerWorkflowDetailsOnPartialUpload({
    required this.executionRole,
    required this.workflowId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionRole': executionRole,
      'workflowId': workflowId,
    };
  }

  factory ServerWorkflowDetailsOnPartialUpload.fromMap(Map<String, dynamic> map) {
    return ServerWorkflowDetailsOnPartialUpload(
      executionRole: (map['executionRole'] as String).input(),
      workflowId: (map['workflowId'] as String).input(),
    );
  }
}

