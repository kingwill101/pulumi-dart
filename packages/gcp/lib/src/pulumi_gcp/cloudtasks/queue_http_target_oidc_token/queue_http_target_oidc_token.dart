// ignore_for_file: unused_element, unnecessary_cast

class QueueHttpTargetOidcToken {
  /// Audience to be used when generating OIDC token. If not specified, the URI specified in target will be used.
  final String? audience;

  /// Service account email to be used for generating OIDC token.
  /// The service account must be within the same project as the queue.
  /// The caller must have iam.serviceAccounts.actAs permission for the service account.
  final String serviceAccountEmail;

  QueueHttpTargetOidcToken({
    this.audience,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audienceValue = audience;
    if (audienceValue != null) {
      map['audience'] = audienceValue;
    }
    map['serviceAccountEmail'] = serviceAccountEmail;
    return map;
  }

  factory QueueHttpTargetOidcToken.fromMap(Map<String, dynamic> map) {
    return QueueHttpTargetOidcToken(
      audience: map['audience'] == null ? null : map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
