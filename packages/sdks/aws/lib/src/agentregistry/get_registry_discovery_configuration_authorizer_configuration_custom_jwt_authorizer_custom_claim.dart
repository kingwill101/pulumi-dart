// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value.dart';

class GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  /// Claim match criteria. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue>> authorizingClaimMatchValues;
  /// Name of the claim validated in the inbound JWT token.
  final pulumi.Input<String> inboundTokenClaimName;
  /// Type of the claim value. Valid values: `STRING`, `STRING_ARRAY`.
  final pulumi.Input<String> inboundTokenClaimValueType;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim].
  /// [authorizingClaimMatchValues] Claim match criteria. See below.
  /// [inboundTokenClaimName] Name of the claim validated in the inbound JWT token.
  /// [inboundTokenClaimValueType] Type of the claim value. Valid values: `STRING`, `STRING_ARRAY`.
  const GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.authorizingClaimMatchValues,
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizingClaimMatchValues': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue>, List<Map<String, dynamic>>>(authorizingClaimMatchValues, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue, Map<String, dynamic>>(value, (value) => value.toMap())),
      'inboundTokenClaimName': inboundTokenClaimName,
      'inboundTokenClaimValueType': inboundTokenClaimValueType,
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim(
      authorizingClaimMatchValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue>(map['authorizingClaimMatchValues']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap((value as Map).cast<String, dynamic>()))),
      inboundTokenClaimName: pulumi.Input.fromValue(map['inboundTokenClaimName'] as String),
      inboundTokenClaimValueType: pulumi.Input.fromValue(map['inboundTokenClaimValueType'] as String),
    );
  }
}
