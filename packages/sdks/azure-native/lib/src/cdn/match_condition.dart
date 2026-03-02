// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define match conditions
class MatchCondition {
  /// List of possible match values.
  final pulumi.Input<List<String>> matchValue;
  /// Match variable to compare against.
  final pulumi.Input<String> matchVariable;
  /// Describes if the result of this condition should be negated.
  final pulumi.Input<bool>? negateCondition;
  /// Describes operator to be matched
  final pulumi.Input<String> operator;
  /// Selector can used to match a specific key for QueryString, Cookies, RequestHeader or PostArgs.
  final pulumi.Input<String>? selector;
  /// List of transforms.
  final pulumi.Input<List<String>>? transforms;

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
      matchValue: ((map['matchValue'] as List).cast<String>()).input(),
      matchVariable: (map['matchVariable'] as String).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition'] as bool).input(),
      operator: (map['operator'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      transforms: map['transforms'] == null ? null : ((map['transforms'] as List).cast<String>()).input(),
    );
  }
}

