// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Define match conditions
class MatchConditionResponse {
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

  /// Creates a new [MatchConditionResponse].
  /// [matchValue] List of possible match values.
  /// [matchVariable] Match variable to compare against.
  /// [negateCondition] Describes if the result of this condition should be negated.
  /// [operator] Describes operator to be matched
  /// [selector] Selector can used to match a specific key for QueryString, Cookies, RequestHeader or PostArgs.
  /// [transforms] List of transforms.
  MatchConditionResponse({
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

  factory MatchConditionResponse.fromMap(Map<String, dynamic> map) {
    return MatchConditionResponse(
      matchValue: pulumi.Input.fromValue((map['matchValue'] as List).cast<String>()),
      matchVariable: pulumi.Input.fromValue(map['matchVariable'] as String),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

