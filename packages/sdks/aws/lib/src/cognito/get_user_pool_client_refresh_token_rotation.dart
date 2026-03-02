// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolClientRefreshTokenRotation {
  /// (Required) The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  final pulumi.Input<String> feature;
  /// (Optional) A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  final pulumi.Input<int> retryGracePeriodSeconds;

  /// Creates a new [GetUserPoolClientRefreshTokenRotation].
  /// [feature] (Required) The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  /// [retryGracePeriodSeconds] (Optional) A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  GetUserPoolClientRefreshTokenRotation({
    required this.feature,
    required this.retryGracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feature': feature,
      'retryGracePeriodSeconds': retryGracePeriodSeconds,
    };
  }

  factory GetUserPoolClientRefreshTokenRotation.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientRefreshTokenRotation(
      feature: (map['feature'] as String).input(),
      retryGracePeriodSeconds: (map['retryGracePeriodSeconds'] as int).input(),
    );
  }
}

