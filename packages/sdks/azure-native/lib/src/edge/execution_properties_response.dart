// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_status_response.dart';

/// Execution Properties
class ExecutionPropertiesResponse {
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Execution specification
  final pulumi.Input<dynamic>? specification;
  /// Status of Execution
  final pulumi.Input<ExecutionStatusResponse> status;
  /// Workflow version of execution
  final pulumi.Input<String> workflowVersionId;

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
      'status': pulumi.Input.mapInputValue<ExecutionStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'workflowVersionId': workflowVersionId,
    };
  }

  factory ExecutionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionPropertiesResponse(
      provisioningState: (map['provisioningState'] as String).input(),
      specification: map['specification'] == null ? null : (map['specification']!).input(),
      status: (ExecutionStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      workflowVersionId: (map['workflowVersionId'] as String).input(),
    );
  }
}

