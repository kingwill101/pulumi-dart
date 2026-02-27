// ignore_for_file: unused_element, unnecessary_cast

class AuthorizerJwtConfiguration {
  /// List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list.
  final List<String>? audiences;

  /// Base domain of the identity provider that issues JSON Web Tokens, such as the `endpoint` attribute of the `aws.cognito.UserPool` resource.
  final String? issuer;

  AuthorizerJwtConfiguration({
    this.audiences,
    this.issuer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audiencesValue = audiences;
    if (audiencesValue != null) {
      map['audiences'] = audiencesValue;
    }
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    return map;
  }

  factory AuthorizerJwtConfiguration.fromMap(Map<String, dynamic> map) {
    return AuthorizerJwtConfiguration(
      audiences: map['audiences'] == null
          ? null
          : (map['audiences'] as List).cast<String>(),
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
    );
  }
}
