// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define a match condition.
class MatchCondition {
  /// List of possible match values.
  final pulumi.Input<List<String>> matchValue;
  /// Request variable to compare with.
  final pulumi.Input<String> matchVariable;
  /// Describes if the result of this condition should be negated.
  final pulumi.Input<bool>? negateCondition;
  /// Comparison type to use for matching with the variable value.
  final pulumi.Input<String> operator;
  /// Match against a specific key from the QueryString, PostArgs, RequestHeader or Cookies variables. Default is null.
  final pulumi.Input<String>? selector;
  /// List of transforms.
  final pulumi.Input<List<String>>? transforms;

  /// Creates a new [MatchCondition].
  /// [matchValue] List of possible match values.
  /// [matchVariable] Request variable to compare with.
  /// [negateCondition] Describes if the result of this condition should be negated.
  /// [operator] Comparison type to use for matching with the variable value.
  /// [selector] Match against a specific key from the QueryString, PostArgs, RequestHeader or Cookies variables. Default is null.
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

