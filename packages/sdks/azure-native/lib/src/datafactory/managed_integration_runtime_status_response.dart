// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_integration_runtime_error_response.dart';
import 'managed_integration_runtime_node_response.dart';
import 'managed_integration_runtime_operation_result_response.dart';

/// Managed integration runtime status.
class ManagedIntegrationRuntimeStatusResponse {
  /// The time at which the integration runtime was created, in ISO8601 format.
  final pulumi.Input<String> createTime;
  /// The data factory name which the integration runtime belong to.
  final pulumi.Input<String> dataFactoryName;
  /// The last operation result that occurred on this integration runtime.
  final pulumi.Input<ManagedIntegrationRuntimeOperationResultResponse> lastOperation;
  /// The list of nodes for managed integration runtime.
  final pulumi.Input<List<ManagedIntegrationRuntimeNodeResponse>> nodes;
  /// The errors that occurred on this integration runtime.
  final pulumi.Input<List<ManagedIntegrationRuntimeErrorResponse>> otherErrors;
  /// The state of integration runtime.
  final pulumi.Input<String> state;
  /// The type of integration runtime.
  /// Expected value is 'Managed'.
  final pulumi.Input<String> type;

  /// Creates a new [ManagedIntegrationRuntimeStatusResponse].
  /// [createTime] The time at which the integration runtime was created, in ISO8601 format.
  /// [dataFactoryName] The data factory name which the integration runtime belong to.
  /// [lastOperation] The last operation result that occurred on this integration runtime.
  /// [nodes] The list of nodes for managed integration runtime.
  /// [otherErrors] The errors that occurred on this integration runtime.
  /// [state] The state of integration runtime.
  /// [type] The type of integration runtime.
  ManagedIntegrationRuntimeStatusResponse({
    required this.createTime,
    required this.dataFactoryName,
    required this.lastOperation,
    required this.nodes,
    required this.otherErrors,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataFactoryName': dataFactoryName,
      'lastOperation': pulumi.Input.mapInputValue<ManagedIntegrationRuntimeOperationResultResponse, Map<String, dynamic>>(lastOperation, (value) => value.toMap()),
      'nodes': pulumi.Input.mapInputValue<List<ManagedIntegrationRuntimeNodeResponse>, List<Map<String, dynamic>>>(nodes, (value) => pulumi.Input.encodeList<ManagedIntegrationRuntimeNodeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'otherErrors': pulumi.Input.mapInputValue<List<ManagedIntegrationRuntimeErrorResponse>, List<Map<String, dynamic>>>(otherErrors, (value) => pulumi.Input.encodeList<ManagedIntegrationRuntimeErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': state,
      'type': type,
    };
  }

  factory ManagedIntegrationRuntimeStatusResponse.fromMap(Map<String, dynamic> map) {
    return ManagedIntegrationRuntimeStatusResponse(
      createTime: (map['createTime'] as String).input(),
      dataFactoryName: (map['dataFactoryName'] as String).input(),
      lastOperation: (ManagedIntegrationRuntimeOperationResultResponse.fromMap((map['lastOperation'] as Map).cast<String, dynamic>())).input(),
      nodes: (pulumi.Input.decodeList<ManagedIntegrationRuntimeNodeResponse>(map['nodes'], (value) => ManagedIntegrationRuntimeNodeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      otherErrors: (pulumi.Input.decodeList<ManagedIntegrationRuntimeErrorResponse>(map['otherErrors'], (value) => ManagedIntegrationRuntimeErrorResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: (map['state'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

