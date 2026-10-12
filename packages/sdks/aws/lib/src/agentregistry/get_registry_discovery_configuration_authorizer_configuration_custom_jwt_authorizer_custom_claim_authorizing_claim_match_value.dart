// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_custom_claim_authorizing_claim_match_value_claim_match_value.dart';

class GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue {
  /// Operator used to match claim values. Valid values: `EQUALS`, `CONTAINS`, `CONTAINS_ANY`.
  final pulumi.Input<String> claimMatchOperator;
  /// Value matched against. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue>> claimMatchValues;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue].
  /// [claimMatchOperator] Operator used to match claim values. Valid values: `EQUALS`, `CONTAINS`, `CONTAINS_ANY`.
  /// [claimMatchValues] Value matched against. See below.
  const GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue({
    required this.claimMatchOperator,
    required this.claimMatchValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMatchOperator': claimMatchOperator,
      'claimMatchValues': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue>, List<Map<String, dynamic>>>(claimMatchValues, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValue(
      claimMatchOperator: pulumi.Input.fromValue(map['claimMatchOperator'] as String),
      claimMatchValues: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue>(map['claimMatchValues']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
