// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint.dart';

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride {
  /// Domain name to which this private endpoint override applies.
  final pulumi.Input<String> domain;
  /// Private endpoint used to reach the specified domain. See above.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint> privateEndpoint;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride].
  /// [domain] Domain name to which this private endpoint override applies.
  /// [privateEndpoint] Private endpoint used to reach the specified domain. See above.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride({
    required this.domain,
    required this.privateEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'privateEndpoint': pulumi.Input.mapInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride(
      domain: pulumi.Input.fromValue(map['domain'] as String),
      privateEndpoint: pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap((map['privateEndpoint']! as Map).cast<String, dynamic>())),
    );
  }
}
