// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer {
  /// Set of allowed audience values for JWT token validation.
  final pulumi.Input<List<String>>? allowedAudiences;

  /// Set of allowed client IDs for JWT token validation.
  final pulumi.Input<List<String>>? allowedClients;

  /// URL used to fetch OpenID Connect configuration or authorization server metadata. Must end with `.well-known/openid-configuration`.
  final pulumi.Input<String> discoveryUrl;

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

  factory AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer(
      allowedAudiences: (() {
        final guardedValue = map['allowedAudiences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowedClients: (() {
        final guardedValue = map['allowedClients'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      discoveryUrl: pulumi.Input.fromValue(map['discoveryUrl'] as String),
    );
  }
}
