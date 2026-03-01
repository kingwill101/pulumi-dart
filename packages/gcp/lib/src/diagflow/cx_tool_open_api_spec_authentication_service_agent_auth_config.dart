// ignore_for_file: unused_element, unnecessary_cast

class CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig {
  /// Optional. Indicate the auth token type generated from the Diglogflow service agent.
  /// The generated token is sent in the Authorization header.
  /// See [ServiceAgentAuth](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#serviceagentauth) for valid values.
  final String? serviceAgentAuth;

  /// Creates a new [CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig].
  /// [serviceAgentAuth] Optional. Indicate the auth token type generated from the Diglogflow service agent.
  CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig({
    this.serviceAgentAuth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serviceAgentAuth': ?serviceAgentAuth};
  }

  factory CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxToolOpenApiSpecAuthenticationServiceAgentAuthConfig(
      serviceAgentAuth: map['serviceAgentAuth'] == null
          ? null
          : map['serviceAgentAuth'] as String,
    );
  }
}
