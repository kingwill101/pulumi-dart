// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue {
  /// Single string value to match. Must contain only letters, numbers, and the characters `_`, `.`, `-`, `:`.
  final pulumi.Input<String?>? matchValueString;
  /// Set of string values to match. Each value must contain only letters, numbers, and the characters `_`, `.`, `-`, `:`.
  final pulumi.Input<List<String>?>? matchValueStringLists;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue].
  /// [matchValueString] Single string value to match. Must contain only letters, numbers, and the characters `_`, `.`, `-`, `:`.
  /// [matchValueStringLists] Set of string values to match. Each value must contain only letters, numbers, and the characters `_`, `.`, `-`, `:`.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue({
    this.matchValueString,
    this.matchValueStringLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValueString': ?matchValueString,
      'matchValueStringLists': ?matchValueStringLists,
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue(
      matchValueString: (() { final guardedValue = map['matchValueString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchValueStringLists: (() { final guardedValue = map['matchValueStringLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
