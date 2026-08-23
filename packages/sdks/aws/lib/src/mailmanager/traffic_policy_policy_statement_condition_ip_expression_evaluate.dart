// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficPolicyPolicyStatementConditionIpExpressionEvaluate {
  final pulumi.Input<String> attribute;

  /// Creates a new [TrafficPolicyPolicyStatementConditionIpExpressionEvaluate].
  /// [attribute] Required.
  const TrafficPolicyPolicyStatementConditionIpExpressionEvaluate({
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
    };
  }

  factory TrafficPolicyPolicyStatementConditionIpExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionIpExpressionEvaluate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
