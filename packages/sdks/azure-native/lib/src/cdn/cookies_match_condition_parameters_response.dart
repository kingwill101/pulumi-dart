// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for Cookies match conditions
class CookiesMatchConditionParametersResponse {
  /// The match value for the condition of the delivery rule
  final pulumi.Input<List<String>>? matchValues;

  /// Describes if this is negate condition or not
  final pulumi.Input<bool>? negateCondition;

  /// Describes operator to be matched
  final pulumi.Input<String> operator;

  /// Name of Cookies to be matched
  final pulumi.Input<String>? selector;

  /// List of transforms
  final pulumi.Input<List<String>>? transforms;

  /// Expected value is 'DeliveryRuleCookiesConditionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [CookiesMatchConditionParametersResponse].
  /// [matchValues] The match value for the condition of the delivery rule
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [selector] Name of Cookies to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRuleCookiesConditionParameters'.
  CookiesMatchConditionParametersResponse({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.selector,
    this.transforms,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'selector': ?selector,
      'transforms': ?transforms,
      'typeName': typeName,
    };
  }

  factory CookiesMatchConditionParametersResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CookiesMatchConditionParametersResponse(
      matchValues: (() {
        final guardedValue = map['matchValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      negateCondition: (() {
        final guardedValue = map['negateCondition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
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
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
