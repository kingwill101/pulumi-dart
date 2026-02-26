// ignore_for_file: unused_element, unnecessary_cast

class GetSubscriptionPushConfigOidcToken {
  /// Audience to be used when generating OIDC token. The audience claim
  /// identifies the recipients that the JWT is intended for. The audience
  /// value is a single case-sensitive string. Having multiple values (array)
  /// for the audience field is not supported. More info about the OIDC JWT
  /// token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3
  /// Note: if not specified, the Push endpoint URL will be used.
  final String audience;

  /// Service account email to be used for generating the OIDC token.
  /// The caller (for subscriptions.create, subscriptions.patch, and
  /// subscriptions.modifyPushConfig RPCs) must have the
  /// iam.serviceAccounts.actAs permission for the service account.
  final String serviceAccountEmail;

  GetSubscriptionPushConfigOidcToken({
    required this.audience,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audience'] = audience;
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory GetSubscriptionPushConfigOidcToken.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPushConfigOidcToken(
      audience: map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
