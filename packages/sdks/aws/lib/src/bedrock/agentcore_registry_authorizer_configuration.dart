// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer.dart';

class AgentcoreRegistryAuthorizerConfiguration {
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer?>? customJwtAuthorizer;

  /// Creates a new [AgentcoreRegistryAuthorizerConfiguration].
  /// [customJwtAuthorizer] Optional.
  const AgentcoreRegistryAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJwtAuthorizer': ?pulumi.Input.mapOptionalInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer, Map<String, dynamic>>(customJwtAuthorizer, (value) => value.toMap()),
    };
  }

  factory AgentcoreRegistryAuthorizerConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfiguration(
      customJwtAuthorizer: (() { final guardedValue = map['customJwtAuthorizer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
