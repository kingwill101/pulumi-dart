// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration.dart';

class RegistryDiscoveryConfiguration {
  /// Authorizer configuration for the registry. Required when `authorizerType` is `CUSTOM_JWT`. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfiguration?>? authorizerConfiguration;
  /// Type of authorizer that controls how consumers access the registry's search and MCP invoke operations. Valid values: `AWS_IAM`, `CUSTOM_JWT`.
  final pulumi.Input<String> authorizerType;

  /// Creates a new [RegistryDiscoveryConfiguration].
  /// [authorizerConfiguration] Authorizer configuration for the registry. Required when `authorizerType` is `CUSTOM_JWT`. See below.
  /// [authorizerType] Type of authorizer that controls how consumers access the registry's search and MCP invoke operations. Valid values: `AWS_IAM`, `CUSTOM_JWT`.
  const RegistryDiscoveryConfiguration({
    this.authorizerConfiguration,
    required this.authorizerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerConfiguration': ?pulumi.Input.mapOptionalInputValue<RegistryDiscoveryConfigurationAuthorizerConfiguration, Map<String, dynamic>>(authorizerConfiguration, (value) => value.toMap()),
      'authorizerType': authorizerType,
    };
  }

  factory RegistryDiscoveryConfiguration.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfiguration(
      authorizerConfiguration: (() { final guardedValue = map['authorizerConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authorizerType: pulumi.Input.fromValue(map['authorizerType'] as String),
    );
  }
}
