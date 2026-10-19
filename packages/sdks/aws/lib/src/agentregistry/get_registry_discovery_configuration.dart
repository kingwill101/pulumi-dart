// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_discovery_configuration_authorizer_configuration.dart';

class GetRegistryDiscoveryConfiguration {
  /// Authorizer configuration for the registry. Present when `authorizerType` is `CUSTOM_JWT`. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfiguration>> authorizerConfigurations;
  /// Type of authorizer that controls how consumers access the registry's search and MCP invoke operations. Valid values: `AWS_IAM`, `CUSTOM_JWT`.
  final pulumi.Input<String> authorizerType;

  /// Creates a new [GetRegistryDiscoveryConfiguration].
  /// [authorizerConfigurations] Authorizer configuration for the registry. Present when `authorizerType` is `CUSTOM_JWT`. See below.
  /// [authorizerType] Type of authorizer that controls how consumers access the registry's search and MCP invoke operations. Valid values: `AWS_IAM`, `CUSTOM_JWT`.
  const GetRegistryDiscoveryConfiguration({
    required this.authorizerConfigurations,
    required this.authorizerType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizerConfigurations': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfiguration>, List<Map<String, dynamic>>>(authorizerConfigurations, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authorizerType': authorizerType,
    };
  }

  factory GetRegistryDiscoveryConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfiguration(
      authorizerConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfiguration>(map['authorizerConfigurations']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      authorizerType: pulumi.Input.fromValue(map['authorizerType'] as String),
    );
  }
}
