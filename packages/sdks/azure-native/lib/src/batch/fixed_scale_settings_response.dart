// ignore_for_file: unused_element, unnecessary_cast


/// Fixed scale settings for the pool.
class FixedScaleSettingsResponse {
  /// The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  final String? resizeTimeout;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final int? targetDedicatedNodes;
  /// At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  final int? targetLowPriorityNodes;

  /// Creates a new [FixedScaleSettingsResponse].
  /// [resizeTimeout] The default value is 15 minutes. Timeout values use ISO 8601 format. For example, use PT10M for 10 minutes. The minimum value is 5 minutes. If you specify a value less than 5 minutes, the Batch service rejects the request with an error; if you are calling the REST API directly, the HTTP status code is 400 (Bad Request).
  /// [targetDedicatedNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  /// [targetLowPriorityNodes] At least one of targetDedicatedNodes, targetLowPriorityNodes must be set.
  FixedScaleSettingsResponse({
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
      resizeTimeout: map['resizeTimeout'] == null ? null : map['resizeTimeout'] as String,
      targetDedicatedNodes: map['targetDedicatedNodes'] == null ? null : map['targetDedicatedNodes'] as int,
      targetLowPriorityNodes: map['targetLowPriorityNodes'] == null ? null : map['targetLowPriorityNodes'] as int,
    );
  }
}

