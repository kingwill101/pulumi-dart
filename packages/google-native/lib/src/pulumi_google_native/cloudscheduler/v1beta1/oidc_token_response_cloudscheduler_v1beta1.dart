// ignore_for_file: unused_element, unnecessary_cast

/// Contains information needed for generating an [OpenID Connect token](https://developers.google.com/identity/protocols/OpenIDConnect). This type of authorization can be used for many scenarios, including calling Cloud Run, or endpoints where you intend to validate the token yourself.
class OidcTokenResponseCloudschedulerV1beta1 {
  /// Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
  final String audience;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OIDC token. The service account must be within the same project as the job. The caller must have iam.serviceAccounts.actAs permission for the service account.
  final String serviceAccountEmail;

  OidcTokenResponseCloudschedulerV1beta1({
    required this.audience,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['audience'] = audience;
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory OidcTokenResponseCloudschedulerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return OidcTokenResponseCloudschedulerV1beta1(
      audience: map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
