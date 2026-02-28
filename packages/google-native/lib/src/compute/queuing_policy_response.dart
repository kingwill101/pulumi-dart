// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';

/// Queuing parameters for the requested deferred capacity.
class QueuingPolicyResponse {
  /// Relative deadline for waiting for capacity.
  final DurationResponse validUntilDuration;

  /// Absolute deadline for waiting for capacity in RFC3339 text format.
  final String validUntilTime;

  /// Creates a new [QueuingPolicyResponse].
  /// [validUntilDuration] Relative deadline for waiting for capacity.
  /// [validUntilTime] Absolute deadline for waiting for capacity in RFC3339 text format.
  QueuingPolicyResponse({
    required this.validUntilDuration,
    required this.validUntilTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['validUntilDuration'] = validUntilDuration.toMap();
    map['validUntilTime'] = validUntilTime;
    return map;
  }

  factory QueuingPolicyResponse.fromMap(Map<String, dynamic> map) {
    return QueuingPolicyResponse(
      validUntilDuration: DurationResponse.fromMap(
          (map['validUntilDuration'] as Map).cast<String, dynamic>()),
      validUntilTime: map['validUntilTime'] as String,
    );
  }
}
