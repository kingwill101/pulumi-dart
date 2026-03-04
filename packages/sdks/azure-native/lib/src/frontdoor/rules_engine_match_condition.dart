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
      negateCondition: (() {
        final guardedValue = map['negateCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      rulesEngineMatchValue: pulumi.Input.fromValue(
        (map['rulesEngineMatchValue'] as List).cast<String>(),
      ),
      rulesEngineMatchVariable: pulumi.Input.fromValue(
        map['rulesEngineMatchVariable'] as String,
      ),
      rulesEngineOperator: pulumi.Input.fromValue(
        map['rulesEngineOperator'] as String,
      ),
      selector: (() {
        final guardedValue = map['selector'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      transforms: (() {
        final guardedValue = map['transforms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
