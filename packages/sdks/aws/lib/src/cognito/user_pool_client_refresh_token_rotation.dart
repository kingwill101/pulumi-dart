// ignore_for_file: unused_element, unnecessary_cast


class UserPoolClientRefreshTokenRotation {
  /// The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  final String feature;
  /// A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  final int? retryGracePeriodSeconds;

  /// Creates a new [UserPoolClientRefreshTokenRotation].
  /// [feature] The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  /// [retryGracePeriodSeconds] A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  UserPoolClientRefreshTokenRotation({
    required this.feature,
    this.retryGracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feature': feature,
      'retryGracePeriodSeconds': ?retryGracePeriodSeconds,
    };
  }

  factory UserPoolClientRefreshTokenRotation.fromMap(Map<String, dynamic> map) {
    return UserPoolClientRefreshTokenRotation(
      feature: map['feature'] as String,
      retryGracePeriodSeconds: map['retryGracePeriodSeconds'] == null ? null : map['retryGracePeriodSeconds'] as int,
    );
  }
}

