// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer.dart';

class RegistryDiscoveryConfigurationAuthorizerConfiguration {
  /// Configuration for a custom JWT authorizer.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer?>? customJwtAuthorizer;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfiguration].
  /// [customJwtAuthorizer] Configuration for a custom JWT authorizer.
  const RegistryDiscoveryConfigurationAuthorizerConfiguration({
    this.customJwtAuthorizer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJwtAuthorizer': ?pulumi.Input.mapOptionalInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer, Map<String, dynamic>>(customJwtAuthorizer, (value) => value.toMap()),
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfiguration.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfiguration(
      customJwtAuthorizer: (() { final guardedValue = map['customJwtAuthorizer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
