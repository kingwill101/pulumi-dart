// ignore_for_file: unused_element, unnecessary_cast

class NotificationChannelSensitiveLabels {
  /// An authorization token for a notification channel. Channel types that support this field include: slack
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? authToken;

  /// An password for a notification channel. Channel types that support this field include: webhook_basicauth
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? serviceKey;

  /// Creates a new [NotificationChannelSensitiveLabels].
  /// [authToken] An authorization token for a notification channel. Channel types that support this field include: slack
  /// [password] An password for a notification channel. Channel types that support this field include: webhook_basicauth
  /// [serviceKey] An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  NotificationChannelSensitiveLabels({
    this.authToken,
    this.password,
    this.serviceKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authToken': ?authToken,
      'password': ?password,
      'serviceKey': ?serviceKey,
    };
  }

  factory NotificationChannelSensitiveLabels.fromMap(Map<String, dynamic> map) {
    return NotificationChannelSensitiveLabels(
      authToken: map['authToken'] == null ? null : map['authToken'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      serviceKey: map['serviceKey'] == null
          ? null
          : map['serviceKey'] as String,
    );
  }
}
