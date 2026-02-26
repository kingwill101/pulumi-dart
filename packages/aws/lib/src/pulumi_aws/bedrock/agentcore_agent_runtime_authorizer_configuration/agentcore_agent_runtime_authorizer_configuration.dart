// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer/agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer.dart';

class AgentcoreAgentRuntimeAuthorizerConfiguration {
  /// JWT-based authorization configuration block. See <span pulumi-lang-nodejs="`customJwtAuthorizer`" pulumi-lang-dotnet="`CustomJwtAuthorizer`" pulumi-lang-go="`customJwtAuthorizer`" pulumi-lang-python="`custom_jwt_authorizer`" pulumi-lang-yaml="`customJwtAuthorizer`" pulumi-lang-java="`customJwtAuthorizer`">`custom_jwt_authorizer`</span> below.
  final AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer?
      customJwtAuthorizer;

  AgentcoreAgentRuntimeAuthorizerConfiguration({
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

  factory AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAuthorizerConfiguration(
      customJwtAuthorizer: map['customJwtAuthorizer'] == null
          ? null
          : AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer
              .fromMap(
                  (map['customJwtAuthorizer'] as Map).cast<String, dynamic>()),
    );
  }
}
