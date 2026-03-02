// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedUserPoolClientRefreshTokenRotation {
  /// The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  final pulumi.Input<String> feature;
  /// A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  final pulumi.Input<int>? retryGracePeriodSeconds;

  /// Creates a new [ManagedUserPoolClientRefreshTokenRotation].
  /// [feature] The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  /// [retryGracePeriodSeconds] A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between `0` and `60`.
  ManagedUserPoolClientRefreshTokenRotation({
    required this.feature,
    this.retryGracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feature': feature,
      'retryGracePeriodSeconds': ?retryGracePeriodSeconds,
    };
  }

  factory ManagedUserPoolClientRefreshTokenRotation.fromMap(Map<String, dynamic> map) {
    return ManagedUserPoolClientRefreshTokenRotation(
      feature: (map['feature'] as String).input(),
      retryGracePeriodSeconds: map['retryGracePeriodSeconds'] == null ? null : ((map['retryGracePeriodSeconds'] as int).input()).input(),
    );
  }
}

