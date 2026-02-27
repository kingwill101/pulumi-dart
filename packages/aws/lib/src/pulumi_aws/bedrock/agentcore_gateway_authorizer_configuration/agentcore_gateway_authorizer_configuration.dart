// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_gateway_authorizer_configuration_custom_jwt_authorizer/agentcore_gateway_authorizer_configuration_custom_jwt_authorizer.dart';

class AgentcoreGatewayAuthorizerConfiguration {
  /// JWT-based authorization configuration block. See `custom_jwt_authorizer` below.
  final AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer?
      customJwtAuthorizer;

  AgentcoreGatewayAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customJwtAuthorizerValue = customJwtAuthorizer;
    if (customJwtAuthorizerValue != null) {
      map['customJwtAuthorizer'] = customJwtAuthorizerValue.toMap();
    }
    return map;
  }

  factory AgentcoreGatewayAuthorizerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfiguration(
      customJwtAuthorizer: map['customJwtAuthorizer'] == null
          ? null
          : AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer.fromMap(
              (map['customJwtAuthorizer'] as Map).cast<String, dynamic>()),
    );
  }
}
