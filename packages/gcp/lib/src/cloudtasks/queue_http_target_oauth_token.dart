// ignore_for_file: unused_element, unnecessary_cast

class QueueHttpTargetOauthToken {
  /// OAuth scope to be used for generating OAuth access token.
  /// If not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
  final String? scope;

  /// Service account email to be used for generating OAuth token.
  /// The service account must be within the same project as the queue.
  /// The caller must have iam.serviceAccounts.actAs permission for the service account.
  final String serviceAccountEmail;

  /// Creates a new [QueueHttpTargetOauthToken].
  /// [scope] OAuth scope to be used for generating OAuth access token.
  /// [serviceAccountEmail] Service account email to be used for generating OAuth token.
  QueueHttpTargetOauthToken({
    this.scope,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scopeValue = scope;
    if (scopeValue != null) {
      map['scope'] = scopeValue;
    }
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory QueueHttpTargetOauthToken.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetOauthToken(
      scope: map['scope'] == null ? null : map['scope'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
