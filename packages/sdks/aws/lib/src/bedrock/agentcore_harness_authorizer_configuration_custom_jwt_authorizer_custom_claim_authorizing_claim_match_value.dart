// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value_claim_match_value.dart';

class AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  /// Relationship between the claim field value and the value or values to match for. Valid values are `EQUALS`, `CONTAINS`, and `CONTAINS_ANY`. `EQUALS` can be used only when `inboundTokenClaimValueType` is `STRING`. `CONTAINS` or `CONTAINS_ANY` can be used only when `inboundTokenClaimValueType` is `STRING_ARRAY`.
  final pulumi.Input<String> claimMatchOperator;
  /// Value or values to match for. See `claimMatchValue` Block below.
  final pulumi.Input<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue> claimMatchValue;

  /// Creates a new [AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue].
  /// [claimMatchOperator] Relationship between the claim field value and the value or values to match for. Valid values are `EQUALS`, `CONTAINS`, and `CONTAINS_ANY`. `EQUALS` can be used only when `inboundTokenClaimValueType` is `STRING`. `CONTAINS` or `CONTAINS_ANY` can be used only when `inboundTokenClaimValueType` is `STRING_ARRAY`.
  /// [claimMatchValue] Value or values to match for. See `claimMatchValue` Block below.
  const AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    required this.claimMatchValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMatchOperator': claimMatchOperator,
      'claimMatchValue': pulumi.Input.mapInputValue<AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue, Map<String, dynamic>>(claimMatchValue, (value) => value.toMap()),
    };
  }

  factory AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue(
      claimMatchOperator: pulumi.Input.fromValue(map['claimMatchOperator'] as String),
      claimMatchValue: pulumi.Input.fromValue(AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue.fromMap((map['claimMatchValue']! as Map).cast<String, dynamic>())),
    );
  }
}
