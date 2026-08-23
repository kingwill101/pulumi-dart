// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_registry_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value_claim_match_value.dart';

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  final pulumi.Input<String> claimMatchOperator;
  final pulumi.Input<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue> claimMatchValue;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue].
  /// [claimMatchOperator] Required.
  /// [claimMatchValue] Required.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    required this.claimMatchValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMatchOperator': claimMatchOperator,
      'claimMatchValue': pulumi.Input.mapInputValue<AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue, Map<String, dynamic>>(claimMatchValue, (value) => value.toMap()),
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue(
      claimMatchOperator: pulumi.Input.fromValue(map['claimMatchOperator'] as String),
      claimMatchValue: pulumi.Input.fromValue(AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue.fromMap((map['claimMatchValue']! as Map).cast<String, dynamic>())),
    );
  }
}
