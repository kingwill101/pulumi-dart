// ignore_for_file: unused_element, unnecessary_cast

import 'compute_node_deallocation_option.dart';

/// Fixed scale settings for the pool.
class FixedScaleSettings {
  /// If omitted, the default value is Requeue.
  final ComputeNodeDeallocationOption? nodeDeallocationOption;
  /// The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  final String? resizeTimeout;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final int? targetDedicatedNodes;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final int? targetLowPriorityNodes;

  /// Creates a new [FixedScaleSettings].
  /// [nodeDeallocationOption] If omitted, the default value is Requeue.
  /// [resizeTimeout] The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  /// [targetDedicatedNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  /// [targetLowPriorityNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  FixedScaleSettings({
    this.nodeDeallocationOption,
    this.resizeTimeout,
    this.targetDedicatedNodes,
    this.targetLowPriorityNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeDeallocationOption': ?nodeDeallocationOption == null ? null : nodeDeallocationOption!.value,
      'resizeTimeout': ?resizeTimeout,
      'targetDedicatedNodes': ?targetDedicatedNodes,
      'targetLowPriorityNodes': ?targetLowPriorityNodes,
    };
  }

  factory FixedScaleSettings.fromMap(Map<String, dynamic> map) {
    return FixedScaleSettings(
      nodeDeallocationOption: map['nodeDeallocationOption'] == null ? null : ComputeNodeDeallocationOption.fromValue(map['nodeDeallocationOption'] as String),
      resizeTimeout: map['resizeTimeout'] == null ? null : map['resizeTimeout'] as String,
      targetDedicatedNodes: map['targetDedicatedNodes'] == null ? null : map['targetDedicatedNodes'] as int,
      targetLowPriorityNodes: map['targetLowPriorityNodes'] == null ? null : map['targetLowPriorityNodes'] as int,
    );
  }
}

