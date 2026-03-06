// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Fixed scale settings for the pool.
class FixedScaleSettingsResponse {
  /// The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  final pulumi.Input<String>? resizeTimeout;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final pulumi.Input<int>? targetDedicatedNodes;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final pulumi.Input<int>? targetLowPriorityNodes;

  /// Creates a new [FixedScaleSettingsResponse].
  /// [resizeTimeout] The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  /// [targetDedicatedNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  /// [targetLowPriorityNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  const FixedScaleSettingsResponse({
    this.resizeTimeout,
    this.targetDedicatedNodes,
    this.targetLowPriorityNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resizeTimeout': ?resizeTimeout,
      'targetDedicatedNodes': ?targetDedicatedNodes,
      'targetLowPriorityNodes': ?targetLowPriorityNodes,
    };
  }

  factory FixedScaleSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FixedScaleSettingsResponse(
      resizeTimeout: (() { final guardedValue = map['resizeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDedicatedNodes: (() { final guardedValue = map['targetDedicatedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetLowPriorityNodes: (() { final guardedValue = map['targetLowPriorityNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

