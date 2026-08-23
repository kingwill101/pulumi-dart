// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList {
  /// List containing exactly one address list ARN or identifier.
  final pulumi.Input<List<String>> addressLists;
  /// Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  final pulumi.Input<String> attribute;

  /// Creates a new [RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList].
  /// [addressLists] List containing exactly one address list ARN or identifier.
  /// [attribute] Email authentication attribute to evaluate. Valid values are `SPF` and `DKIM`.
  const RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList({
    required this.addressLists,
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLists': addressLists,
      'attribute': attribute,
    };
  }

  factory RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleConditionBooleanExpressionEvaluateIsInAddressList(
      addressLists: pulumi.Input.fromValue((map['addressLists'] as List).cast<String>()),
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
