// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for UrlPath match conditions
class UrlPathMatchConditionParametersResponse {
  /// The match value for the condition of the delivery rule
  final pulumi.Input<List<String>>? matchValues;
  /// Describes if this is negate condition or not
  final pulumi.Input<bool>? negateCondition;
  /// Describes operator to be matched
  final pulumi.Input<String> operator;
  /// List of transforms
  final pulumi.Input<List<String>>? transforms;
  /// Expected value is 'DeliveryRuleUrlPathMatchConditionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [UrlPathMatchConditionParametersResponse].
  /// [matchValues] The match value for the condition of the delivery rule
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRuleUrlPathMatchConditionParameters'.
  UrlPathMatchConditionParametersResponse({
    this.matchValues,
    this.negateCondition,
    required this.operator,
    this.transforms,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matchValues': ?matchValues,
      'negateCondition': ?negateCondition,
      'operator': operator,
      'transforms': ?transforms,
      'typeName': typeName,
    };
  }

  factory UrlPathMatchConditionParametersResponse.fromMap(Map<String, dynamic> map) {
    return UrlPathMatchConditionParametersResponse(
      matchValues: (() { final guardedValue = map['matchValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      negateCondition: (() { final guardedValue = map['negateCondition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      operator: pulumi.Input.fromValue(map['operator'] as String),
      transforms: (() { final guardedValue = map['transforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}

