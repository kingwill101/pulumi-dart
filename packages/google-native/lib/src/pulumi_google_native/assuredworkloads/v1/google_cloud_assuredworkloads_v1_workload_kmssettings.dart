// ignore_for_file: unused_element, unnecessary_cast

/// Settings specific to the Key Management Service.
class GoogleCloudAssuredworkloadsV1WorkloadKMSSettings {
  /// Input only. Immutable. The time at which the Key Management Service will automatically create a new version of the crypto key and mark it as the primary.
  final String nextRotationTime;

  /// Input only. Immutable. [next_rotation_time] will be advanced by this period when the Key Management Service automatically rotates a key. Must be at least 24 hours and at most 876,000 hours.
  final String rotationPeriod;

  GoogleCloudAssuredworkloadsV1WorkloadKMSSettings({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nextRotationTime'] = nextRotationTime;
    map['rotationPeriod'] = rotationPeriod;
    return map;
  }

  factory GoogleCloudAssuredworkloadsV1WorkloadKMSSettings.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAssuredworkloadsV1WorkloadKMSSettings(
      nextRotationTime: map['nextRotationTime'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
    );
  }
}
