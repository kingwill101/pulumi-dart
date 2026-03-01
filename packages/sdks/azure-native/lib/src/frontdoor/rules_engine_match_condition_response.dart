// ignore_for_file: unused_element, unnecessary_cast


/// Define a match condition
class RulesEngineMatchConditionResponse {
  /// Describes if this is negate condition or not
  final bool? negateCondition;
  /// Match values to match against. The operator will apply to each value in here with OR semantics. If any of them match the variable with the given operator this match condition is considered a match.
  final List<String> rulesEngineMatchValue;
  /// Match Variable
  final String rulesEngineMatchVariable;
  /// Describes operator to apply to the match condition.
  final String rulesEngineOperator;
  /// Name of selector in RequestHeader or RequestBody to be matched
  final String? selector;
  /// List of transforms
  final List<String>? transforms;

  /// Creates a new [RulesEngineMatchConditionResponse].
  /// [negateCondition] Describes if this is negate condition or not
  /// [rulesEngineMatchValue] Match values to match against. The operator will apply to each value in here with OR semantics. If any of them match the variable with the given operator this match condition is considered a match.
  /// [rulesEngineMatchVariable] Match Variable
  /// [rulesEngineOperator] Describes operator to apply to the match condition.
  /// [selector] Name of selector in RequestHeader or RequestBody to be matched
  /// [transforms] List of transforms
  RulesEngineMatchConditionResponse({
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

  factory RulesEngineMatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return RulesEngineMatchConditionResponse(
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      rulesEngineMatchValue: (map['rulesEngineMatchValue'] as List).cast<String>(),
      rulesEngineMatchVariable: map['rulesEngineMatchVariable'] as String,
      rulesEngineOperator: map['rulesEngineOperator'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

