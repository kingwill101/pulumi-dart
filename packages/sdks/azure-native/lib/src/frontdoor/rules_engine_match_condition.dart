// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define a match condition
class RulesEngineMatchCondition {
  /// Describes if this is negate condition or not
  final pulumi.Input<bool>? negateCondition;
  /// Match values to match against. The operator will apply to each value in here with OR semantics. If any of them match the variable with the given operator this match condition is considered a match.
  final pulumi.Input<List<String>> rulesEngineMatchValue;
  /// Match Variable
  final pulumi.Input<String> rulesEngineMatchVariable;
  /// Describes operator to apply to the match condition.
  final pulumi.Input<String> rulesEngineOperator;
  /// Name of selector in RequestHeader or RequestBody to be matched
  final pulumi.Input<String>? selector;
  /// List of transforms
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [RulesEngineMatchCondition].
  /// [negateCondition] Describes if this is negate condition or not
  /// [rulesEngineMatchValue] Match values to match against. The operator will apply to each value in here with OR semantics. If any of them match the variable with the given operator this match condition is considered a match.
  /// [rulesEngineMatchVariable] Match Variable
  /// [rulesEngineOperator] Describes operator to apply to the match condition.
  /// [selector] Name of selector in RequestHeader or RequestBody to be matched
  /// [transforms] List of transforms
  RulesEngineMatchCondition({
    this.negateCondition,
    required this.rulesEngineMatchValue,
    required this.rulesEngineMatchVariable,
    required this.rulesEngineOperator,
    this.selector,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'negateCondition': ?negateCondition,
      'rulesEngineMatchValue': rulesEngineMatchValue,
      'rulesEngineMatchVariable': rulesEngineMatchVariable,
      'rulesEngineOperator': rulesEngineOperator,
      'selector': ?selector,
      'transforms': ?transforms,
    };
  }

  factory RulesEngineMatchCondition.fromMap(Map<String, dynamic> map) {
    return RulesEngineMatchCondition(
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition'] as bool).input(),
      rulesEngineMatchValue: ((map['rulesEngineMatchValue'] as List).cast<String>()).input(),
      rulesEngineMatchVariable: (map['rulesEngineMatchVariable'] as String).input(),
      rulesEngineOperator: (map['rulesEngineOperator'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      transforms: map['transforms'] == null ? null : ((map['transforms'] as List).cast<String>()).input(),
    );
  }
}

