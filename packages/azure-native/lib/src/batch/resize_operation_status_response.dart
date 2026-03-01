// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resize_error_response.dart';

/// Describes either the current operation (if the pool AllocationState is Resizing) or the previously completed operation (if the AllocationState is Steady).
class ResizeOperationStatusResponse {
  /// This property is set only if an error occurred during the last pool resize, and only when the pool allocationState is Steady.
  final List<ResizeErrorResponse>? errors;
  /// The default value is requeue.
  final String? nodeDeallocationOption;
  /// The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  final String? resizeTimeout;
  /// The time when this resize operation was started.
  final String? startTime;
  /// The desired number of dedicated compute nodes in the pool.
  final int? targetDedicatedNodes;
  /// The desired number of Spot/low-priority compute nodes in the pool.
  final int? targetLowPriorityNodes;

  /// Creates a new [ResizeOperationStatusResponse].
  /// [errors] This property is set only if an error occurred during the last pool resize, and only when the pool allocationState is Steady.
  /// [nodeDeallocationOption] The default value is requeue.
  /// [resizeTimeout] The default value is 15 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service returns an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  /// [startTime] The time when this resize operation was started.
  /// [targetDedicatedNodes] The desired number of dedicated compute nodes in the pool.
  /// [targetLowPriorityNodes] The desired number of Spot/low-priority compute nodes in the pool.
  ResizeOperationStatusResponse({
    this.errors,
    this.nodeDeallocationOption,
    this.resizeTimeout,
    this.startTime,
    this.targetDedicatedNodes,
    this.targetLowPriorityNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?errors == null ? null : pulumi.Input.encodeList<ResizeErrorResponse, Map<String, dynamic>>(errors!, (value) => value.toMap()),
      'nodeDeallocationOption': ?nodeDeallocationOption,
      'resizeTimeout': ?resizeTimeout,
      'startTime': ?startTime,
      'targetDedicatedNodes': ?targetDedicatedNodes,
      'targetLowPriorityNodes': ?targetLowPriorityNodes,
    };
  }

  factory ResizeOperationStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResizeOperationStatusResponse(
      errors: map['errors'] == null ? null : pulumi.Input.decodeList<ResizeErrorResponse>(map['errors'], (value) => ResizeErrorResponse.fromMap((value as Map).cast<String, dynamic>())),
      nodeDeallocationOption: map['nodeDeallocationOption'] == null ? null : map['nodeDeallocationOption'] as String,
      resizeTimeout: map['resizeTimeout'] == null ? null : map['resizeTimeout'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      targetDedicatedNodes: map['targetDedicatedNodes'] == null ? null : map['targetDedicatedNodes'] as int,
      targetLowPriorityNodes: map['targetLowPriorityNodes'] == null ? null : map['targetLowPriorityNodes'] as int,
    );
  }
}

