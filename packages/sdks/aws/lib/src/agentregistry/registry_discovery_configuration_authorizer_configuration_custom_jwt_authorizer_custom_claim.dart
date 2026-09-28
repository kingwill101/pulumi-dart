// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value.dart';

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  /// Claim match criteria. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue> authorizingClaimMatchValue;
  /// Name of the claim to validate in the inbound JWT token. Must contain only letters, numbers, and the characters `_`, `.`, `-`, `:`.
  final pulumi.Input<String> inboundTokenClaimName;
  /// Type of the claim value. Valid values: `STRING`, `STRING_ARRAY`.
  final pulumi.Input<String> inboundTokenClaimValueType;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim].
  /// [authorizingClaimMatchValue] Claim match criteria. See below.
  /// [inboundTokenClaimName] Name of the claim to validate in the inbound JWT token. Must contain only letters, numbers, and the characters `_`, `.`, `-`, `:`.
  /// [inboundTokenClaimValueType] Type of the claim value. Valid values: `STRING`, `STRING_ARRAY`.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.authorizingClaimMatchValue,
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizingClaimMatchValue': pulumi.Input.mapInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue, Map<String, dynamic>>(authorizingClaimMatchValue, (value) => value.toMap()),
      'inboundTokenClaimName': inboundTokenClaimName,
      'inboundTokenClaimValueType': inboundTokenClaimValueType,
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaim(
      authorizingClaimMatchValue: pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap((map['authorizingClaimMatchValue']! as Map).cast<String, dynamic>())),
      inboundTokenClaimName: pulumi.Input.fromValue(map['inboundTokenClaimName'] as String),
      inboundTokenClaimValueType: pulumi.Input.fromValue(map['inboundTokenClaimValueType'] as String),
    );
  }
}
