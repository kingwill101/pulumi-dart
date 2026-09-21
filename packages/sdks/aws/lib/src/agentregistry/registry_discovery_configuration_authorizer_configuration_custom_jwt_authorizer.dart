// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_custom_claim.dart';
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint.dart';
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override.dart';

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer {
  /// Audience values accepted during JWT validation. A token is rejected if none of its audience claims match.
  final pulumi.Input<List<String>?>? allowedAudiences;
  /// Client identifiers accepted during JWT validation. A token is rejected if it was not issued to one of these clients.
  final pulumi.Input<List<String>?>? allowedClients;
  /// Scopes accepted during JWT validation. A token is rejected if it does not carry one of these scopes.
  final pulumi.Input<List<String>?>? allowedScopes;
  /// Custom claims for additional JWT validation beyond standard OIDC claims. See below.
  final pulumi.Input<List<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>?>? customClaims;
  /// OpenID Connect discovery URL used to retrieve the identity provider's metadata and signing keys.
  final pulumi.Input<String> discoveryUrl;
  /// Private endpoint used to reach the identity provider's discovery URL over a private network path. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint?>? privateEndpoint;
  /// Per-domain private endpoint overrides that route specific identity provider domains through distinct private endpoints. See below.
  final pulumi.Input<List<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>?>? privateEndpointOverrides;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer].
  /// [allowedAudiences] Audience values accepted during JWT validation. A token is rejected if none of its audience claims match.
  /// [allowedClients] Client identifiers accepted during JWT validation. A token is rejected if it was not issued to one of these clients.
  /// [allowedScopes] Scopes accepted during JWT validation. A token is rejected if it does not carry one of these scopes.
  /// [customClaims] Custom claims for additional JWT validation beyond standard OIDC claims. See below.
  /// [discoveryUrl] OpenID Connect discovery URL used to retrieve the identity provider's metadata and signing keys.
  /// [privateEndpoint] Private endpoint used to reach the identity provider's discovery URL over a private network path. See below.
  /// [privateEndpointOverrides] Per-domain private endpoint overrides that route specific identity provider domains through distinct private endpoints. See below.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer({
    this.allowedAudiences,
    this.allowedClients,
    this.allowedScopes,
    this.customClaims,
    required this.discoveryUrl,
    this.privateEndpoint,
    this.privateEndpointOverrides,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': ?allowedAudiences,
      'allowedClients': ?allowedClients,
      'allowedScopes': ?allowedScopes,
      'customClaims': ?pulumi.Input.mapOptionalInputValue<List<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>, List<Map<String, dynamic>>>(customClaims, (value) => pulumi.Input.encodeList<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveryUrl': discoveryUrl,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointOverrides': ?pulumi.Input.mapOptionalInputValue<List<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>, List<Map<String, dynamic>>>(privateEndpointOverrides, (value) => pulumi.Input.encodeList<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer(
      allowedAudiences: (() { final guardedValue = map['allowedAudiences']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedClients: (() { final guardedValue = map['allowedClients']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedScopes: (() { final guardedValue = map['allowedScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      customClaims: (() { final guardedValue = map['customClaims']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>(guardedValue, (value) => RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap((value as Map).cast<String, dynamic>()))); })(),
      discoveryUrl: pulumi.Input.fromValue(map['discoveryUrl'] as String),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      privateEndpointOverrides: (() { final guardedValue = map['privateEndpointOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>(guardedValue, (value) => RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
