// ignore_for_file: unused_element, unnecessary_cast


class FrontdoorRuleConditionsPostArgsCondition {
  /// One or more string or integer values(e.g. "1") representing the value of the `POST` argument to match. If multiple values are specified, they're evaluated using `OR` logic.
  final List<String>? matchValues;
  /// If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  final bool? negateCondition;
  /// A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  final String operator;
  /// A string value representing the name of the `POST` argument.
  final String postArgsName;
  /// A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  final List<String>? transforms;

  /// Creates a new [FrontdoorRuleConditionsPostArgsCondition].
  /// [matchValues] One or more string or integer values(e.g. "1") representing the value of the `POST` argument to match. If multiple values are specified, they're evaluated using `OR` logic.
  /// [negateCondition] If `true` operator becomes the opposite of its value. Possible values `true` or `false`. Defaults to `false`. Details can be found in the `Condition Operator List` below.
  /// [operator] A Conditional operator. Possible values include `Any`, `Equal`, `Contains`, `BeginsWith`, `EndsWith`, `LessThan`, `LessThanOrEqual`, `GreaterThan`, `GreaterThanOrEqual` or `RegEx`. Details can be found in the `Condition Operator List` below.
  /// [postArgsName] A string value representing the name of the `POST` argument.
  /// [transforms] A Conditional operator. Possible values include `Lowercase`, `RemoveNulls`, `Trim`, `Uppercase`, `UrlDecode` or `UrlEncode`. Details can be found in the `Condition Transform List` below.
  FrontdoorRuleConditionsPostArgsCondition({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    required this.postArgsName,
    this.transforms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'postArgsName': postArgsName,
      'transforms': ?transforms,
    };
  }

  factory FrontdoorRuleConditionsPostArgsCondition.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleConditionsPostArgsCondition(
      matchValues: map['matchValues'] == null ? null : (map['matchValues'] as List).cast<String>(),
      negateCondition: map['negateCondition'] == null ? null : map['negateCondition'] as bool,
      operator: map['operator'] as String,
      postArgsName: map['postArgsName'] as String,
      transforms: map['transforms'] == null ? null : (map['transforms'] as List).cast<String>(),
    );
  }
}

