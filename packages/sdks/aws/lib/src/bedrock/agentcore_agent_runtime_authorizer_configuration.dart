// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_authorizer_configuration_custom_jwt_authorizer.dart';

class AgentcoreAgentRuntimeAuthorizerConfiguration {
  /// JWT-based authorization configuration block. See `customJwtAuthorizer` below.
  final pulumi.Input<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer>? customJwtAuthorizer;

  /// Creates a new [AgentcoreAgentRuntimeAuthorizerConfiguration].
  /// [customJwtAuthorizer] JWT-based authorization configuration block. See `customJwtAuthorizer` below.
  const AgentcoreAgentRuntimeAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJwtAuthorizer': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer, Map<String, dynamic>>(customJwtAuthorizer, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeAuthorizerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeAuthorizerConfiguration(
      customJwtAuthorizer: (() { final guardedValue = map['customJwtAuthorizer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeAuthorizerConfigurationCustomJwtAuthorizer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
