// ignore_for_file: unused_element, unnecessary_cast

class NotificationChannelSensitiveLabels {
  /// An authorization token for a notification channel. Channel types that support this field include: slack
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? authToken;

  /// An password for a notification channel. Channel types that support this field include:<span pulumi-lang-nodejs=" webhookBasicauth
  /// " pulumi-lang-dotnet=" WebhookBasicauth
  /// " pulumi-lang-go=" webhookBasicauth
  /// " pulumi-lang-python=" webhook_basicauth
  /// " pulumi-lang-yaml=" webhookBasicauth
  /// " pulumi-lang-java=" webhookBasicauth
  /// "> webhook_basicauth
  /// </span>**Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// An servicekey token for a notification channel. Channel types that support this field include: pagerduty
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? serviceKey;

  NotificationChannelSensitiveLabels({
    this.authToken,
    this.password,
    this.serviceKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authTokenValue = authToken;
    if (authTokenValue != null) {
      map['authToken'] = authTokenValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final serviceKeyValue = serviceKey;
    if (serviceKeyValue != null) {
      map['serviceKey'] = serviceKeyValue;
    }
    return map;
  }

  factory NotificationChannelSensitiveLabels.fromMap(Map<String, dynamic> map) {
    return NotificationChannelSensitiveLabels(
      authToken: map['authToken'] == null ? null : map['authToken'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      serviceKey:
          map['serviceKey'] == null ? null : map['serviceKey'] as String,
    );
  }
}
