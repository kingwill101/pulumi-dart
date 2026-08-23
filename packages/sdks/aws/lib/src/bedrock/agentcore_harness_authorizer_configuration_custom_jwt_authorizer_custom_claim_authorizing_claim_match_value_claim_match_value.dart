// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue {
  /// String value to match for. Must be specified when `claimMatchOperator` is `EQUALS` or `CONTAINS`. Exactly one of `matchValueString` or `matchValueStringList` must be specified.
  final pulumi.Input<String>? matchValueString;
  /// List of strings to check for a match. Must be specified when `claimMatchOperator` is `CONTAINS_ANY`. Exactly one of `matchValueString` or `matchValueStringList` must be specified.
  final pulumi.Input<List<String>>? matchValueStringLists;

  /// Creates a new [AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue].
  /// [matchValueString] String value to match for. Must be specified when `claimMatchOperator` is `EQUALS` or `CONTAINS`. Exactly one of `matchValueString` or `matchValueStringList` must be specified.
  /// [matchValueStringLists] List of strings to check for a match. Must be specified when `claimMatchOperator` is `CONTAINS_ANY`. Exactly one of `matchValueString` or `matchValueStringList` must be specified.
  const AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue({
    this.matchValueString,
    this.matchValueStringLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValueString': ?matchValueString,
      'matchValueStringLists': ?matchValueStringLists,
    };
  }

  factory AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerCustomClaimAuthorizingClaimMatchValueClaimMatchValue(
      matchValueString: (() { final guardedValue = map['matchValueString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchValueStringLists: (() { final guardedValue = map['matchValueStringLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
