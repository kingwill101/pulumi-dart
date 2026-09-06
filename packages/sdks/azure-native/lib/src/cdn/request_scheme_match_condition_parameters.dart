// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for RequestScheme match conditions
class RequestSchemeMatchConditionParameters {
  /// The match value for the condition of the delivery rule
  final pulumi.Input<List<dynamic>?>? matchValues;
  /// Describes if this is negate condition or not
  final pulumi.Input<bool?>? negateCondition;
  /// Describes operator to be matched
  final pulumi.Input<dynamic> operator;
  /// List of transforms
  final pulumi.Input<List<dynamic>?>? transforms;
  /// Expected value is 'DeliveryRuleRequestSchemeConditionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [RequestSchemeMatchConditionParameters].
  /// [matchValues] The match value for the condition of the delivery rule
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRuleRequestSchemeConditionParameters'.
  RequestSchemeMatchConditionParameters({
    this.matchValues,
    pulumi.Input<bool?>? negateCondition,
    required this.operator,
    this.transforms,
    required this.typeName,
  }) : negateCondition = negateCondition ?? pulumi.Input.fromValue(false);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'transforms': ?transforms,
      'typeName': typeName,
    };
  }

  factory RequestSchemeMatchConditionParameters.fromMap(Map<String, dynamic> map) {
    return RequestSchemeMatchConditionParameters(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator']),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
