// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig {
  /// Optional. The name of the SecretManager secret version resource storing the Bearer token. If this field is set, the `token` field will be ignored.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}
  final String? secretVersionForToken;

  /// Optional. The text token appended to the text Bearer to the request Authorization header.
  /// [Session parameters reference](https://cloud.google.com/dialogflow/cx/docs/concept/parameter#session-ref) can be used to pass the token dynamically, e.g. `$session.params.parameter-id`.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? token;

  /// Creates a new [CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig].
  /// [secretVersionForToken] Optional. The name of the SecretManager secret version resource storing the Bearer token. If this field is set, the `token` field will be ignored.
  /// [token] Optional. The text token appended to the text Bearer to the request Authorization header.
  CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig({
    this.secretVersionForToken,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretVersionForToken': ?secretVersionForToken,
      'token': ?token,
    };
  }

  factory CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolVersionToolOpenApiSpecAuthenticationBearerTokenConfig(
      secretVersionForToken: map['secretVersionForToken'] == null
          ? null
          : map['secretVersionForToken'] as String,
      token: map['token'] == null ? null : map['token'] as String,
    );
  }
}
