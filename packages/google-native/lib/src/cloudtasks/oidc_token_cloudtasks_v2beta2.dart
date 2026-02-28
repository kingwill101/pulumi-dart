// ignore_for_file: unused_element, unnecessary_cast

/// Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect). This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
class OidcTokenCloudtasksV2beta2 {
  /// Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
  final String? audience;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OIDC token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  final String? serviceAccountEmail;

  /// Creates a new [OidcTokenCloudtasksV2beta2].
  /// [audience] Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
  /// [serviceAccountEmail] [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OIDC token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  OidcTokenCloudtasksV2beta2({
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

  factory OidcTokenCloudtasksV2beta2.fromMap(Map<String, dynamic> map) {
    return OidcTokenCloudtasksV2beta2(
      audience: map['audience'] == null ? null : map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
    );
  }
}
