// ignore_for_file: unused_element, unnecessary_cast

/// Contains information needed for generating an [OAuth token](https://developers.google.com/identity/protocols/OAuth2). This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.
class OAuthTokenCloudtasksV2 {
  /// OAuth scope to be used for generating OAuth access token. If not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
  final String? scope;

  /// [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OAuth token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  final String? serviceAccountEmail;

  OAuthTokenCloudtasksV2({
    this.scope,
    this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    final serviceAccountEmailValue = serviceAccountEmail;
    if (serviceAccountEmailValue != null) {
      map['serviceAccountEmail'] = serviceAccountEmailValue;
    }
    return map;
  }

  factory OAuthTokenCloudtasksV2.fromMap(Map<String, dynamic> map) {
    return OAuthTokenCloudtasksV2(
      scope: map['scope'] == null ? null : map['scope'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] == null
          ? null
          : map['serviceAccountEmail'] as String,
    );
  }
}
