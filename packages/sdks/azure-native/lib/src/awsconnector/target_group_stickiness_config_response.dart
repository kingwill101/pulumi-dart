// ignore_for_file: unused_element, unnecessary_cast


/// Definition of TargetGroupStickinessConfig
class TargetGroupStickinessConfigResponse {
  /// The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  final int? durationSeconds;
  /// Indicates whether target group stickiness is enabled.
  final bool? enabled;

  /// Creates a new [TargetGroupStickinessConfigResponse].
  /// [durationSeconds] The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  /// [enabled] Indicates whether target group stickiness is enabled.
  TargetGroupStickinessConfigResponse({
    this.durationSeconds,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'durationSeconds': ?durationSeconds,
      'enabled': ?enabled,
    };
  }

  factory TargetGroupStickinessConfigResponse.fromMap(Map<String, dynamic> map) {
    return TargetGroupStickinessConfigResponse(
      durationSeconds: map['durationSeconds'] == null ? null : map['durationSeconds'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

