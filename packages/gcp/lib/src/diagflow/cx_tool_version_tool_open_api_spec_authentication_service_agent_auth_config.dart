// ignore_for_file: unused_element, unnecessary_cast

class CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig {
  /// Optional. Indicate the auth token type generated from the Diglogflow service agent.
  /// The generated token is sent in the Authorization header.
  /// See [ServiceAgentAuth](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.tools#serviceagentauth) for valid values.
  final String? serviceAgentAuth;

  /// Creates a new [CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig].
  /// [serviceAgentAuth] Optional. Indicate the auth token type generated from the Diglogflow service agent.
  CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig({
    this.serviceAgentAuth,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceAgentAuthValue = serviceAgentAuth;
    if (serviceAgentAuthValue != null) {
      map['serviceAgentAuth'] = serviceAgentAuthValue;
    }
    return map;
  }

  factory CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig.fromMap(
      Map<String, dynamic> map) {
    return CxToolVersionToolOpenApiSpecAuthenticationServiceAgentAuthConfig(
      serviceAgentAuth: map['serviceAgentAuth'] == null
          ? null
          : map['serviceAgentAuth'] as String,
    );
  }
}
