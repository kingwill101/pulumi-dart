// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_custom_claim.dart';
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint.dart';
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override.dart';

class GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer {
  /// Audience values accepted during JWT validation.
  final pulumi.Input<List<String>> allowedAudiences;
  /// Client identifiers accepted during JWT validation.
  final pulumi.Input<List<String>> allowedClients;
  /// Scopes accepted during JWT validation.
  final pulumi.Input<List<String>> allowedScopes;
  /// Custom claims for additional JWT validation beyond standard OIDC claims. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>> customClaims;
  /// OpenID Connect discovery URL used to retrieve the identity provider's metadata and signing keys.
  final pulumi.Input<String> discoveryUrl;
  /// Per-domain private endpoint overrides that route specific identity provider domains through distinct private endpoints. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>> privateEndpointOverrides;
  /// Private endpoint used to reach the specified domain. See above.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint>> privateEndpoints;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer].
  /// [allowedAudiences] Audience values accepted during JWT validation.
  /// [allowedClients] Client identifiers accepted during JWT validation.
  /// [allowedScopes] Scopes accepted during JWT validation.
  /// [customClaims] Custom claims for additional JWT validation beyond standard OIDC claims. See below.
  /// [discoveryUrl] OpenID Connect discovery URL used to retrieve the identity provider's metadata and signing keys.
  /// [privateEndpointOverrides] Per-domain private endpoint overrides that route specific identity provider domains through distinct private endpoints. See below.
  /// [privateEndpoints] Private endpoint used to reach the specified domain. See above.
  const GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer({
    required this.allowedAudiences,
    required this.allowedClients,
    required this.allowedScopes,
    required this.customClaims,
    required this.discoveryUrl,
    required this.privateEndpointOverrides,
    required this.privateEndpoints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedAudiences': allowedAudiences,
      'allowedClients': allowedClients,
      'allowedScopes': allowedScopes,
      'customClaims': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>, List<Map<String, dynamic>>>(customClaims, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'discoveryUrl': discoveryUrl,
      'privateEndpointOverrides': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>, List<Map<String, dynamic>>>(privateEndpointOverrides, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'privateEndpoints': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint>, List<Map<String, dynamic>>>(privateEndpoints, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizer(
      allowedAudiences: pulumi.Input.fromValue((map['allowedAudiences'] as List).cast<String>()),
      allowedClients: pulumi.Input.fromValue((map['allowedClients'] as List).cast<String>()),
      allowedScopes: pulumi.Input.fromValue((map['allowedScopes'] as List).cast<String>()),
      customClaims: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim>(map['customClaims']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap((value as Map).cast<String, dynamic>()))),
      discoveryUrl: pulumi.Input.fromValue(map['discoveryUrl'] as String),
      privateEndpointOverrides: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride>(map['privateEndpointOverrides']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverride.fromMap((value as Map).cast<String, dynamic>()))),
      privateEndpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint>(map['privateEndpoints']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
