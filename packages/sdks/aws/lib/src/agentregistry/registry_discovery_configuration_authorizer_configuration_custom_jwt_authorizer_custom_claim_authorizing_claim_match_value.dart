// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value_claim_match_value.dart';

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  /// Operator used to match claim values. Valid values: `EQUALS`, `CONTAINS`, `CONTAINS_ANY`.
  final pulumi.Input<String> claimMatchOperator;
  /// Value to match against. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue> claimMatchValue;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue].
  /// [claimMatchOperator] Operator used to match claim values. Valid values: `EQUALS`, `CONTAINS`, `CONTAINS_ANY`.
  /// [claimMatchValue] Value to match against. See below.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    required this.claimMatchValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMatchOperator': claimMatchOperator,
      'claimMatchValue': pulumi.Input.mapInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue, Map<String, dynamic>>(claimMatchValue, (value) => value.toMap()),
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue(
      claimMatchOperator: pulumi.Input.fromValue(map['claimMatchOperator'] as String),
      claimMatchValue: pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue.fromMap((map['claimMatchValue']! as Map).cast<String, dynamic>())),
    );
  }
}
