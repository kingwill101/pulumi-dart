// ignore_for_file: unused_element, unnecessary_cast


/// Define match conditions
class MatchCondition {
  /// List of possible match values.
  final List<String> matchValue;
  /// Match variable to compare against.
  final String matchVariable;
  /// Describes if the result of this condition should be negated.
  final bool? negateCondition;
  /// Describes operator to be matched
  final String operator;
  /// Selector can used to match a specific key for QueryString, Cookies, RequestHeader or PostArgs.
  final String? selector;
  /// List of transforms.
  final List<String>? transforms;

  /// Creates a new [MatchCondition].
  /// [matchValue] List of possible match values.
  /// [matchVariable] Match variable to compare against.
  /// [negateCondition] Describes if the result of this condition should be negated.
  /// [operator] Describes operator to be matched
  /// [selector] Selector can used to match a specific key for QueryString, Cookies, RequestHeader or PostArgs.
  /// [transforms] List of transforms.
  MatchCondition({
    required this.matchValue,
    required this.matchVariable,
    this.negateCondition,
    required this.operator,
    this.selector,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValue': matchValue,
      'matchVariable': matchVariable,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'selector': ?selector,
      'transforms': ?transforms,
    };
  }

  factory MatchCondition.fromMap(Map<String, dynamic> map) {
    return MatchCondition(
      matchValue: (map['matchValue'] as List).cast<String>(),
      matchVariable: map['matchVariable'] as String,
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      selector: map['selector'] == null ? null : map['selector'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

