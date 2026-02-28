// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolClientRefreshTokenRotation {
  /// (Required) The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  final String feature;

  /// (Optional) A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  final int retryGracePeriodSeconds;

  /// Creates a new [GetUserPoolClientRefreshTokenRotation].
  /// [feature] (Required) The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  /// [retryGracePeriodSeconds] (Optional) A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  GetUserPoolClientRefreshTokenRotation({
    required this.feature,
    required this.retryGracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['feature'] = feature;
    map['retryGracePeriodSeconds'] = retryGracePeriodSeconds;
    return map;
  }

  factory GetUserPoolClientRefreshTokenRotation.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolClientRefreshTokenRotation(
      feature: map['feature'] as String,
      retryGracePeriodSeconds: map['retryGracePeriodSeconds'] as int,
    );
  }
}
