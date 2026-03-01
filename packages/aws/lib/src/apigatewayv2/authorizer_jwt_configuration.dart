// ignore_for_file: unused_element, unnecessary_cast

class AuthorizerJwtConfiguration {
  /// List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list.
  final List<String>? audiences;

  /// Base domain of the identity provider that issues JSON Web Tokens, such as the `endpoint` attribute of the `aws.cognito.UserPool` resource.
  final String? issuer;

  /// Creates a new [AuthorizerJwtConfiguration].
  /// [audiences] List of the intended recipients of the JWT. A valid JWT must provide an aud that matches at least one entry in this list.
  /// [issuer] Base domain of the identity provider that issues JSON Web Tokens, such as the `endpoint` attribute of the `aws.cognito.UserPool` resource.
  AuthorizerJwtConfiguration({this.audiences, this.issuer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'audiences': ?audiences, 'issuer': ?issuer};
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
