// ignore_for_file: unused_element, unnecessary_cast

class GetSecretsSecretRotation {
  /// Timestamp in UTC at which the Secret is scheduled to rotate.
  final String nextRotationTime;

  /// The Duration between rotation notifications.
  final String rotationPeriod;

  GetSecretsSecretRotation({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nextRotationTime'] = nextRotationTime;
    map['rotationPeriod'] = rotationPeriod;
    return map;
  }

  factory GetSecretsSecretRotation.fromMap(Map<String, dynamic> map) {
    return GetSecretsSecretRotation(
      nextRotationTime: map['nextRotationTime'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
    );
  }
}
