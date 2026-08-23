// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value.dart';

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue> authorizingClaimMatchValue;
  final pulumi.Input<String> inboundTokenClaimName;
  final pulumi.Input<String> inboundTokenClaimValueType;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim].
  /// [authorizingClaimMatchValue] Required.
  /// [inboundTokenClaimName] Required.
  /// [inboundTokenClaimValueType] Required.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.authorizingClaimMatchValue,
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizingClaimMatchValue': pulumi.Input.mapInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue, Map<String, dynamic>>(authorizingClaimMatchValue, (value) => value.toMap()),
      'inboundTokenClaimName': inboundTokenClaimName,
      'inboundTokenClaimValueType': inboundTokenClaimValueType,
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaim(
      authorizingClaimMatchValue: pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap((map['authorizingClaimMatchValue']! as Map).cast<String, dynamic>())),
      inboundTokenClaimName: pulumi.Input.fromValue(map['inboundTokenClaimName'] as String),
      inboundTokenClaimValueType: pulumi.Input.fromValue(map['inboundTokenClaimValueType'] as String),
    );
  }
}
