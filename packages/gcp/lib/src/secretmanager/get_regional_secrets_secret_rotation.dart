// ignore_for_file: unused_element, unnecessary_cast

class GetRegionalSecretsSecretRotation {
  /// Timestamp in UTC at which the secret is scheduled to rotate.
  final String nextRotationTime;

  /// The Duration between rotation notifications.
  final String rotationPeriod;

  /// Creates a new [GetRegionalSecretsSecretRotation].
  /// [nextRotationTime] Timestamp in UTC at which the secret is scheduled to rotate.
  /// [rotationPeriod] The Duration between rotation notifications.
  GetRegionalSecretsSecretRotation({
    required this.nextRotationTime,
    required this.rotationPeriod,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['nextRotationTime'] = nextRotationTime;
    map['rotationPeriod'] = rotationPeriod;
    return map;
  }

  factory GetRegionalSecretsSecretRotation.fromMap(Map<String, dynamic> map) {
    return GetRegionalSecretsSecretRotation(
      nextRotationTime: map['nextRotationTime'] as String,
      rotationPeriod: map['rotationPeriod'] as String,
    );
  }
}
