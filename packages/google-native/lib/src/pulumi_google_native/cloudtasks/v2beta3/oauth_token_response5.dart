// ignore_for_file: unused_element, unnecessary_cast

/// Contains information needed for generating an [OAuth token](https://developers.google.com/identity/protocols/OAuth2). This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
class OAuthTokenResponse5 {
  /// OAuth scope to be used for generating OAuth access token. If not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
  final String scope;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OAuth token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  final String serviceAccountEmail;

  OAuthTokenResponse5({
    required this.scope,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scope'] = scope;
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory OAuthTokenResponse5.fromMap(Map<String, dynamic> map) {
    return OAuthTokenResponse5(
      scope: map['scope'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
