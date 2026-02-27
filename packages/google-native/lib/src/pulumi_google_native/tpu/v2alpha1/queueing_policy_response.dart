// ignore_for_file: unused_element, unnecessary_cast

import 'interval_response_tpu_v2alpha1.dart';

/// Defines the policy of the QueuedRequest.
class QueueingPolicyResponse {
  /// A relative time after which resources may be created.
  final String validAfterDuration;

  /// An absolute time at which resources may be created.
  final String validAfterTime;

  /// An absolute time interval within which resources may be created.
  final IntervalResponseTpuV2alpha1 validInterval;

  /// A relative time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  final String validUntilDuration;

  /// An absolute time after which resources should not be created. If the request cannot be fulfilled by this time the request will be failed.
  final String validUntilTime;

  QueueingPolicyResponse({
    required this.validAfterDuration,
    required this.validAfterTime,
    required this.validInterval,
    required this.validUntilDuration,
    required this.validUntilTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['validAfterDuration'] = validAfterDuration;
    map['validAfterTime'] = validAfterTime;
    map['validInterval'] = validInterval.toMap();
    map['validUntilDuration'] = validUntilDuration;
    map['validUntilTime'] = validUntilTime;
    return map;
  }

  factory QueueingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return QueueingPolicyResponse(
      validAfterDuration: map['validAfterDuration'] as String,
      validAfterTime: map['validAfterTime'] as String,
      validInterval: IntervalResponseTpuV2alpha1.fromMap(
          (map['validInterval'] as Map).cast<String, dynamic>()),
      validUntilDuration: map['validUntilDuration'] as String,
      validUntilTime: map['validUntilTime'] as String,
    );
  }
}
