// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for PostArgs match conditions
class PostArgsMatchConditionParameters {
  /// The match value for the condition of the delivery rule
  final pulumi.Input<List<String>>? matchValues;
  /// Describes if this is negate condition or not
  final pulumi.Input<bool>? negateCondition;
  /// Describes operator to be matched
  final pulumi.Input<String> operator;
  /// Name of PostArg to be matched
  final pulumi.Input<String>? selector;
  /// List of transforms
  final pulumi.Input<List<String>>? transforms;
  /// Expected value is 'DeliveryRulePostArgsConditionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [PostArgsMatchConditionParameters].
  /// [matchValues] The match value for the condition of the delivery rule
  /// [negateCondition] Describes if this is negate condition or not
  /// [operator] Describes operator to be matched
  /// [selector] Name of PostArg to be matched
  /// [transforms] List of transforms
  /// [typeName] Expected value is 'DeliveryRulePostArgsConditionParameters'.
  PostArgsMatchConditionParameters({
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

  factory PostArgsMatchConditionParameters.fromMap(Map<String, dynamic> map) {
    return PostArgsMatchConditionParameters(
      matchValues: map['matchValues'] == null ? null : ((map['matchValues'] as List).cast<String>()).input(),
      negateCondition: map['negateCondition'] == null ? null : (map['negateCondition'] as bool).input(),
      operator: (map['operator'] as String).input(),
      selector: map['selector'] == null ? null : (map['selector'] as String).input(),
      transforms: map['transforms'] == null ? null : ((map['transforms'] as List).cast<String>()).input(),
      typeName: (map['typeName'] as String).input(),
    );
  }
}

