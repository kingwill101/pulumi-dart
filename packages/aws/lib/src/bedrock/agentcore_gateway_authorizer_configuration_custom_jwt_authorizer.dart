// ignore_for_file: unused_element, unnecessary_cast


class AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer {
  /// Set of allowed audience values for JWT token validation.
  final List<String>? allowedAudiences;
  /// Set of allowed client IDs for JWT token validation.
  final List<String>? allowedClients;
  /// URL used to fetch OpenID Connect configuration or authorization server metadata. Must end with `.well-known/openid-configuration`.
  final String discoveryUrl;

  /// Creates a new [AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer].
  /// [allowedAudiences] Set of allowed audience values for JWT token validation.
  /// [allowedClients] Set of allowed client IDs for JWT token validation.
  /// [discoveryUrl] URL used to fetch OpenID Connect configuration or authorization server metadata. Must end with `.well-known/openid-configuration`.
  AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer({
    this.allowedAudiences,
    this.allowedClients,
    required this.discoveryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'allowedClients': ?allowedClients,
      'discoveryUrl': discoveryUrl,
    };
  }

  factory AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer(
      allowedAudiences: map['allowedAudiences'] == null ? null : (map['allowedAudiences'] as List).cast<String>(),
      allowedClients: map['allowedClients'] == null ? null : (map['allowedClients'] as List).cast<String>(),
      discoveryUrl: map['discoveryUrl'] as String,
    );
  }
}

