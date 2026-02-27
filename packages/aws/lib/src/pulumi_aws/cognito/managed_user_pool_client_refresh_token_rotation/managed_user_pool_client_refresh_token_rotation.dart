// ignore_for_file: unused_element, unnecessary_cast

class ManagedUserPoolClientRefreshTokenRotation {
  /// The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  final String feature;

  /// A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  final int? retryGracePeriodSeconds;

  ManagedUserPoolClientRefreshTokenRotation({
    required this.feature,
    this.retryGracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['feature'] = feature;
    final retryGracePeriodSecondsValue = retryGracePeriodSeconds;
    if (retryGracePeriodSecondsValue != null) {
      map['retryGracePeriodSeconds'] = retryGracePeriodSecondsValue;
    }
    return map;
  }

  factory ManagedUserPoolClientRefreshTokenRotation.fromMap(
      Map<String, dynamic> map) {
    return ManagedUserPoolClientRefreshTokenRotation(
      feature: map['feature'] as String,
      retryGracePeriodSeconds: map['retryGracePeriodSeconds'] == null
          ? null
          : map['retryGracePeriodSeconds'] as int,
    );
  }
}
