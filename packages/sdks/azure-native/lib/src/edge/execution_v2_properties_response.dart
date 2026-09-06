// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_v2_status_response.dart';

/// ExecutionV2 Properties
class ExecutionV2PropertiesResponse {
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// ExecutionV2 specification
  final pulumi.Input<dynamic>? specification;
  /// Status of ExecutionV2
  final pulumi.Input<ExecutionV2StatusResponse> status;
  /// Workflow version of ExecutionV2
  final pulumi.Input<String?>? workflowVersionId;

  /// Creates a new [ExecutionV2PropertiesResponse].
  /// [provisioningState] Provisioning state of resource
  /// [specification] ExecutionV2 specification
  /// [status] Status of ExecutionV2
  /// [workflowVersionId] Workflow version of ExecutionV2
  const ExecutionV2PropertiesResponse({
    required this.provisioningState,
    this.specification,
    required this.status,
    this.workflowVersionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'specification': ?specification,
      'status': pulumi.Input.mapInputValue<ExecutionV2StatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'workflowVersionId': ?workflowVersionId,
    };
  }

  factory ExecutionV2PropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionV2PropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      status: pulumi.Input.fromValue(ExecutionV2StatusResponse.fromMap((map['status']! as Map).cast<String, dynamic>())),
      workflowVersionId: (() { final guardedValue = map['workflowVersionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
