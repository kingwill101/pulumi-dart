// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_authorizer_configuration_custom_jwt_authorizer.dart';

class AgentcoreHarnessAuthorizerConfiguration {
  /// JWT-based authorization configuration block. See `customJwtAuthorizer` Block below.
  final pulumi.Input<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizer>? customJwtAuthorizer;

  /// Creates a new [AgentcoreHarnessAuthorizerConfiguration].
  /// [customJwtAuthorizer] JWT-based authorization configuration block. See `customJwtAuthorizer` Block below.
  const AgentcoreHarnessAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJwtAuthorizer': ?pulumi.Input.mapOptionalInputValue<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizer, Map<String, dynamic>>(customJwtAuthorizer, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessAuthorizerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessAuthorizerConfiguration(
      customJwtAuthorizer: (() { final guardedValue = map['customJwtAuthorizer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
