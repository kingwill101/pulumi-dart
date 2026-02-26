// ignore_for_file: unused_element, unnecessary_cast

class JobHttpTargetOidcToken {
  /// Audience to be used when generating OIDC token. If not specified,
  /// the URI specified in target will be used.
  final String? audience;

  /// Service account email to be used for generating OAuth token.
  /// The service account must be within the same project as the job.
  final String serviceAccountEmail;

  JobHttpTargetOidcToken({
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

  factory JobHttpTargetOidcToken.fromMap(Map<String, dynamic> map) {
    return JobHttpTargetOidcToken(
      audience: map['audience'] == null ? null : map['audience'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}
