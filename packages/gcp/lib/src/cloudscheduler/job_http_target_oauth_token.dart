// ignore_for_file: unused_element, unnecessary_cast


class JobHttpTargetOauthToken {
  /// OAuth scope to be used for generating OAuth access token. If not specified,
  /// "https://www.googleapis.com/auth/cloud-platform" will be used.
  final String? scope;
  /// Service account email to be used for generating OAuth token.
  /// The service account must be within the same project as the job.
  final String serviceAccountEmail;

  /// Creates a new [JobHttpTargetOauthToken].
  /// [scope] OAuth scope to be used for generating OAuth access token. If not specified,
  /// [serviceAccountEmail] Service account email to be used for generating OAuth token.
  JobHttpTargetOauthToken({
    this.scope,
    required this.serviceAccountEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scope': ?scope,
      'serviceAccountEmail': serviceAccountEmail,
    };
  }

  factory JobHttpTargetOauthToken.fromMap(Map<String, dynamic> map) {
    return JobHttpTargetOauthToken(
      scope: map['scope'] == null ? null : map['scope'] as String,
      serviceAccountEmail: map['serviceAccountEmail'] as String,
    );
  }
}

