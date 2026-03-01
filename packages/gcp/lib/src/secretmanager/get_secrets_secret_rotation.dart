// ignore_for_file: unused_element, unnecessary_cast

class GetSecretsSecretRotation {
  /// Timestamp in UTC at which the Secret is scheduled to rotate.
  final String nextRotationTime;

  /// The Duration between rotation notifications.
  final String rotationPeriod;

  /// Creates a new [GetSecretsSecretRotation].
  /// [nextRotationTime] Timestamp in UTC at which the Secret is scheduled to rotate.
  /// [rotationPeriod] The Duration between rotation notifications.
  GetSecretsSecretRotation({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextRotationTime': nextRotationTime,
      'rotationPeriod': rotationPeriod,
    };
  }

  factory GetSecretsSecretRotation.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretRotation(
      nextRotationTime: map['nextRotationTime'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
    );
  }
}
