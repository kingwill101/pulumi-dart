// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_node_deallocation_option.dart';

/// Fixed scale settings for the pool.
class FixedScaleSettings {
  /// If omitted, the default value is Requeue.
  final pulumi.Input<ComputeNodeDeallocationOption?>? nodeDeallocationOption;
  /// The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  final pulumi.Input<String?>? resizeTimeout;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final pulumi.Input<int?>? targetDedicatedNodes;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final pulumi.Input<int?>? targetLowPriorityNodes;

  /// Creates a new [FixedScaleSettings].
  /// [nodeDeallocationOption] If omitted, the default value is Requeue.
  /// [resizeTimeout] The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  /// [targetDedicatedNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  /// [targetLowPriorityNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  FixedScaleSettings({
    this.nodeDeallocationOption,
    pulumi.Input<String?>? resizeTimeout,
    this.targetDedicatedNodes,
    this.targetLowPriorityNodes,
  }) : resizeTimeout = resizeTimeout ?? pulumi.Input.fromValue('PT15M');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeDeallocationOption': ?pulumi.Input.mapOptionalInputValue<ComputeNodeDeallocationOption, String>(nodeDeallocationOption, (value) => value.wireValue),
      'resizeTimeout': ?resizeTimeout,
      'targetDedicatedNodes': ?targetDedicatedNodes,
      'targetLowPriorityNodes': ?targetLowPriorityNodes,
    };
  }

  factory FixedScaleSettings.fromMap(Map<String, dynamic> map) {
    return FixedScaleSettings(
      nodeDeallocationOption: (() { final guardedValue = map['nodeDeallocationOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputeNodeDeallocationOption.fromValue(guardedValue as String)); })(),
      resizeTimeout: (() { final guardedValue = map['resizeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDedicatedNodes: (() { final guardedValue = map['targetDedicatedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      targetLowPriorityNodes: (() { final guardedValue = map['targetLowPriorityNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
