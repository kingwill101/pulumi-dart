// ignore_for_file: unused_element, unnecessary_cast

/// The rotation time and period for a Secret. At next_rotation_time, Secret Manager will send a Pub/Sub notification to the topics configured on the Secret. Secret.topics must be set to configure rotation.
class RotationResponse {
  /// Optional. Timestamp in UTC at which the Secret is scheduled to rotate. Cannot be set to less than 300s (5 min) in the future and at most 3153600000s (100 years). next_rotation_time MUST be set if rotation_period is set.
  final String nextRotationTime;

  /// Input only. The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years). If rotation_period is set, next_rotation_time must be set. next_rotation_time will be advanced by this period when the service automatically sends rotation notifications.
  final String rotationPeriod;

  /// Creates a new [RotationResponse].
  /// [nextRotationTime] Optional. Timestamp in UTC at which the Secret is scheduled to rotate. Cannot be set to less than 300s (5 min) in the future and at most 3153600000s (100 years). next_rotation_time MUST be set if rotation_period is set.
  /// [rotationPeriod] Input only. The Duration between rotation notifications. Must be in seconds and at least 3600s (1h) and at most 3153600000s (100 years). If rotation_period is set, next_rotation_time must be set. next_rotation_time will be advanced by this period when the service automatically sends rotation notifications.
  RotationResponse({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nextRotationTime'] = nextRotationTime;
    map['rotationPeriod'] = rotationPeriod;
    return map;
  }

  factory RotationResponse.fromMap(Map<String, dynamic> map) {
    return RotationResponse(
      nextRotationTime: map['nextRotationTime'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
    );
  }
}
