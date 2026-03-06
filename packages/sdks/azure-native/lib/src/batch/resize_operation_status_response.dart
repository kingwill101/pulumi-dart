// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_error_response.dart';

/// Describes either the current operation (if the pool AllocationState is Resizing) or the previously completed operation (if the AllocationState is Steady).
class ResizeOperationStatusResponse {
  /// This property is set only if an error occurred during the last pool resize, and only when the pool allocationState is Steady.
  final pulumi.Input<List<ResizeErrorResponse>>? errors;
  /// The default value is requeue.
  final pulumi.Input<String>? nodeDeallocationOption;
  /// The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  final pulumi.Input<String>? resizeTimeout;
  /// The time when this resize operation was started.
  final pulumi.Input<String>? startTime;
  /// The desired number of dedicated compute nodes in the pool.
  final pulumi.Input<int>? targetDedicatedNodes;
  /// The desired number of Spot/low-priority compute nodes in the pool.
  final pulumi.Input<int>? targetLowPriorityNodes;

  /// Creates a new [ResizeOperationStatusResponse].
  /// [errors] This property is set only if an error occurred during the last pool resize, and only when the pool allocationState is Steady.
  /// [nodeDeallocationOption] The default value is requeue.
  /// [resizeTimeout] The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  /// [startTime] The time when this resize operation was started.
  /// [targetDedicatedNodes] The desired number of dedicated compute nodes in the pool.
  /// [targetLowPriorityNodes] The desired number of Spot/low-priority compute nodes in the pool.
  const ResizeOperationStatusResponse({
    this.errors,
    this.nodeDeallocationOption,
    this.resizeTimeout,
    this.startTime,
    this.targetDedicatedNodes,
    this.targetLowPriorityNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<ResizeErrorResponse>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<ResizeErrorResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nodeDeallocationOption': ?nodeDeallocationOption,
      'resizeTimeout': ?resizeTimeout,
      'startTime': ?startTime,
      'targetDedicatedNodes': ?targetDedicatedNodes,
      'targetLowPriorityNodes': ?targetLowPriorityNodes,
    };
  }

  factory ResizeOperationStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResizeOperationStatusResponse(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResizeErrorResponse>(guardedValue, (value) => ResizeErrorResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nodeDeallocationOption: (() { final guardedValue = map['nodeDeallocationOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resizeTimeout: (() { final guardedValue = map['resizeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDedicatedNodes: (() { final guardedValue = map['targetDedicatedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetLowPriorityNodes: (() { final guardedValue = map['targetLowPriorityNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

