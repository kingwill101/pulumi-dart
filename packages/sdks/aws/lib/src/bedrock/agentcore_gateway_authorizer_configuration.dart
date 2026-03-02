// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_authorizer_configuration_custom_jwt_authorizer.dart';

class AgentcoreGatewayAuthorizerConfiguration {
  /// JWT-based authorization configuration block. See `custom_jwt_authorizer` below.
  final pulumi.Input<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer>? customJwtAuthorizer;

  /// Creates a new [AgentcoreGatewayAuthorizerConfiguration].
  /// [customJwtAuthorizer] JWT-based authorization configuration block. See `custom_jwt_authorizer` below.
  AgentcoreGatewayAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJwtAuthorizer': ?pulumi.Input.mapOptionalInputValue<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer, Map<String, dynamic>>(customJwtAuthorizer, (value) => value.toMap()),
    };
  }

  factory AgentcoreGatewayAuthorizerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfiguration(
      customJwtAuthorizer: map['customJwtAuthorizer'] == null ? null : (AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizer.fromMap((map['customJwtAuthorizer'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

