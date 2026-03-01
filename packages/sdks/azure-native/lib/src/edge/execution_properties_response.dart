// ignore_for_file: unused_element, unnecessary_cast

import 'execution_status_response.dart';

/// Execution Properties
class ExecutionPropertiesResponse {
  /// Provisioning state of resource
  final String provisioningState;
  /// Execution specification
  final dynamic specification;
  /// Status of Execution
  final ExecutionStatusResponse status;
  /// Workflow version of execution
  final String workflowVersionId;

  /// Creates a new [ExecutionPropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [specification] Execution specification
  /// [status] Status of Execution
  /// [workflowVersionId] Workflow version of execution
  ExecutionPropertiesResponse({
    required this.provisioningState,
    this.specification,
    required this.status,
    required this.workflowVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'specification': ?specification,
      'status': status.toMap(),
      'workflowVersionId': workflowVersionId,
    };
  }

  factory ExecutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionPropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      specification: map['specification'] == null ? null : map['specification'],
      status: ExecutionStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      workflowVersionId: map['workflowVersionId'] as String,
    );
  }
}

