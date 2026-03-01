// ignore_for_file: unused_element, unnecessary_cast

class WorkloadKmsSettings {
  /// Required. Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.
  final String nextRotationTime;

  /// Required. Input only. Immutable. will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.
  final String rotationPeriod;

  /// Creates a new [WorkloadKmsSettings].
  /// [nextRotationTime] Required. Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.
  /// [rotationPeriod] Required. Input only. Immutable. will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.
  WorkloadKmsSettings({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRotationTime': nextRotationTime,
      'rotationPeriod': rotationPeriod,
    };
  }

  factory WorkloadKmsSettings.fromMap(Map<String, dynamic> map) {
    return WorkloadKmsSettings(
      nextRotationTime: map['nextRotationTime'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
    );
  }
}
