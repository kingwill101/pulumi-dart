// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList {
  /// List containing exactly one address list ARN to check membership against.
  final pulumi.Input<List<String>> addressLists;
  /// Email attribute to check against the address list.
  final pulumi.Input<String> attribute;

  /// Creates a new [TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList].
  /// [addressLists] List containing exactly one address list ARN to check membership against.
  /// [attribute] Email attribute to check against the address list.
  const TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList({
    required this.addressLists,
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressLists': addressLists,
      'attribute': attribute,
    };
  }

  factory TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionBooleanExpressionEvaluateIsInAddressList(
      addressLists: pulumi.Input.fromValue((map['addressLists'] as List).cast<String>()),
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
