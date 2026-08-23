// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_gateway_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value.dart';

class AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim {
  /// Configuration block to define the value or values to match for and the relationship of the match. See `authorizingClaimMatchValue` below.
  final pulumi.Input<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue> authorizingClaimMatchValue;
  /// Name of the custom claim field to check.
  final pulumi.Input<String> inboundTokenClaimName;
  /// Data type of the claim value to check for. Valid values are `STRING` and `STRING_ARRAY`.
  final pulumi.Input<String> inboundTokenClaimValueType;

  /// Creates a new [AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim].
  /// [authorizingClaimMatchValue] Configuration block to define the value or values to match for and the relationship of the match. See `authorizingClaimMatchValue` below.
  /// [inboundTokenClaimName] Name of the custom claim field to check.
  /// [inboundTokenClaimValueType] Data type of the claim value to check for. Valid values are `STRING` and `STRING_ARRAY`.
  const AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim({
    required this.authorizingClaimMatchValue,
    required this.inboundTokenClaimName,
    required this.inboundTokenClaimValueType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizingClaimMatchValue': pulumi.Input.mapInputValue<AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue, Map<String, dynamic>>(authorizingClaimMatchValue, (value) => value.toMap()),
      'inboundTokenClaimName': inboundTokenClaimName,
      'inboundTokenClaimValueType': inboundTokenClaimValueType,
    };
  }

  factory AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaim(
      authorizingClaimMatchValue: pulumi.Input.fromValue(AgentcoreGatewayAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap((map['authorizingClaimMatchValue']! as Map).cast<String, dynamic>())),
      inboundTokenClaimName: pulumi.Input.fromValue(map['inboundTokenClaimName'] as String),
      inboundTokenClaimValueType: pulumi.Input.fromValue(map['inboundTokenClaimValueType'] as String),
    );
  }
}
