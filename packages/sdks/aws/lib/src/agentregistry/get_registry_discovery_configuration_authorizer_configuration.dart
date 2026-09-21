// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer.dart';

class GetRegistryDiscoveryConfigurationAuthorizerConfiguration {
  /// Configuration for a custom JWT authorizer. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer>> customJwtAuthorizers;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfiguration].
  /// [customJwtAuthorizers] Configuration for a custom JWT authorizer. See below.
  const GetRegistryDiscoveryConfigurationAuthorizerConfiguration({
    required this.customJwtAuthorizers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customJwtAuthorizers': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer>, List<Map<String, dynamic>>>(customJwtAuthorizers, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfiguration.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfiguration(
      customJwtAuthorizers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer>(map['customJwtAuthorizers']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
