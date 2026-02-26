// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';

/// Queuing parameters for the requested deferred capacity.
class QueuingPolicy {
  /// Relative deadline for waiting for capacity.
  final Duration? validUntilDuration;

  /// Absolute deadline for waiting for capacity in RFC3339 text format.
  final String? validUntilTime;

  QueuingPolicy({
    this.validUntilDuration,
    this.validUntilTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final validUntilDurationValue = validUntilDuration;
    if (validUntilDurationValue != null) {
      map['validUntilDuration'] = validUntilDurationValue.toMap();
    }
    final validUntilTimeValue = validUntilTime;
    if (validUntilTimeValue != null) {
      map['validUntilTime'] = validUntilTimeValue;
    }
    return map;
  }

  factory QueuingPolicy.fromMap(Map<String, dynamic> map) {
    return QueuingPolicy(
      validUntilDuration: map['validUntilDuration'] == null
          ? null
          : Duration.fromMap(
              (map['validUntilDuration'] as Map).cast<String, dynamic>()),
      validUntilTime: map['validUntilTime'] == null
          ? null
          : map['validUntilTime'] as String,
    );
  }
}
