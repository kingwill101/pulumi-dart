// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer.dart';

class AgentcoreAgentRuntimeAuthorizerConfiguration {
  /// JWT-based authorization configuration block. See `custom_jwt_authorizer` below.
  final AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer?
  customJwtAuthorizer;

  /// Creates a new [AgentcoreAgentRuntimeAuthorizerConfiguration].
  /// [customJwtAuthorizer] JWT-based authorization configuration block. See `custom_jwt_authorizer` below.
  AgentcoreAgentRuntimeAuthorizerConfiguration({this.customJwtAuthorizer});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJwtAuthorizer': ?customJwtAuthorizer == null
          ? null
          : customJwtAuthorizer!.toMap(),
    };
  }

  factory AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreAgentRuntimeAuthorizerConfiguration(
      customJwtAuthorizer: map['customJwtAuthorizer'] == null
          ? null
          : AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer.fromMap(
              (map['customJwtAuthorizer'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
