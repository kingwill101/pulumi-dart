// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for RequestHeader match conditions
class RequestHeaderMatchConditionParameters {
  /// The match value for the condition of the delivery rule
  final pulumi.Input<List<String>?>? matchValues;
  /// Describes if this is negate condition or not
  final pulumi.Input<bool?>? negateCondition;
  /// Describes operator to be matched
  final pulumi.Input<dynamic> operator;
  /// Name of Header to be matched
  final pulumi.Input<String?>? selector;
  /// List of transforms
  final pulumi.Input<List<dynamic>?>? transforms;
  /// Expected value is 'DeliveryRuleRequestHeaderConditionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [RequestHeaderMatchConditionParameters].
  /// [matchValues] The match value for the condition of the delivery rule
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [selector] Name of Header to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRuleRequestHeaderConditionParameters'.
  RequestHeaderMatchConditionParameters({
    this.matchValues,
    pulumi.Input<bool?>? negateCondition,
    required this.operator,
    this.selector,
    this.transforms,
    required this.typeName,
  }) : negateCondition = negateCondition ?? pulumi.Input.fromValue(false);

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

  factory RequestHeaderMatchConditionParameters.fromMap(Map<String, dynamic> map) {
    return RequestHeaderMatchConditionParameters(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator']),
      selector: (() { final guardedValue = map['selector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
