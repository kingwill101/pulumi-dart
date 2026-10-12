// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue {
  /// Single string value to match.
  final pulumi.Input<String> matchValueString;
  /// Set of string values to match.
  final pulumi.Input<List<String>> matchValueStringLists;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue].
  /// [matchValueString] Single string value to match.
  /// [matchValueStringLists] Set of string values to match.
  const GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue({
    required this.matchValueString,
    required this.matchValueStringLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValueString': matchValueString,
      'matchValueStringLists': matchValueStringLists,
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue(
      matchValueString: pulumi.Input.fromValue(map['matchValueString'] as String),
      matchValueStringLists: pulumi.Input.fromValue((map['matchValueStringLists'] as List).cast<String>()),
    );
  }
}
