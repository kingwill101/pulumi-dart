// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define match conditions
class MatchCondition {
  /// List of possible match values.
  final pulumi.Input<List<String>> matchValue;
  /// Match variable to compare against.
  final pulumi.Input<dynamic> matchVariable;
  /// Describes if the result of this condition should be negated.
  final pulumi.Input<bool?>? negateCondition;
  /// Describes operator to be matched
  final pulumi.Input<dynamic> operator;
  /// Selector can used to match a specific key for QueryString, Cookies, RequestHeader or PostArgs.
  final pulumi.Input<String?>? selector;
  /// List of transforms.
  final pulumi.Input<List<dynamic>?>? transforms;

  /// Creates a new [MatchCondition].
  /// [matchValue] List of possible match values.
  /// [matchVariable] Match variable to compare against.
  /// [negateCondition] Describes if the result of this condition should be negated.
  /// [operator] Describes operator to be matched
  /// [selector] Selector can used to match a specific key for QueryString, Cookies, RequestHeader or PostArgs.
  /// [transforms] List of transforms.
  const MatchCondition({
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
      matchValue: pulumi.Input.fromValue((map['matchValue'] as List).cast<String>()),
      matchVariable: pulumi.Input.fromValue(map['matchVariable']),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator']),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
    );
  }
}
