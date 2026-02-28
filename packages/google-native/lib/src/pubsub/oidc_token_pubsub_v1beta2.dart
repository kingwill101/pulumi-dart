// ignore_for_file: unused_element, unnecessary_cast

/// Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect).
class OidcTokenPubsubV1beta2 {
  /// Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified, the Push endpoint URL will be used.
  final String? audience;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating the OIDC token. The caller (for CreateSubscription, UpdateSubscription, and ModifyPushConfig RPCs) must have the iam.serviceAccounts.actAs permission for the service account.
  final String? serviceAccountEmail;

  /// Creates a new [OidcTokenPubsubV1beta2].
  /// [audience] Audience to be used when generating OIDC token. The audience claim identifies the recipients that the JWT is intended for. The audience value is a single case-sensitive string. Having multiple values (array) for the audience field is not supported. More info about the OIDC JWT token audience here: https://tools.ietf.org/html/rfc7519#section-4.1.3 Note: if not specified, the Push endpoint URL will be used.
  /// [serviceAccountEmail] [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating the OIDC token. The caller (for CreateSubscription, UpdateSubscription, and ModifyPushConfig RPCs) must have the iam.serviceAccounts.actAs permission for the service account.
  OidcTokenPubsubV1beta2({
    this.audience,
    this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audienceValue = audience;
    if (audienceValue != null) {
      map['audience'] = audienceValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    return map;
  }

  factory OidcTokenPubsubV1beta2.fromMap(Map<String, dynamic> map) {
    return OidcTokenPubsubV1beta2(
      audience: map['audience'] == null ? null : map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
    );
  }
}
