// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate {
  final pulumi.Input<String> attribute;

  /// Creates a new [TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate].
  /// [attribute] Required.
  const TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate({
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
    };
  }

  factory TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionTlsExpressionEvaluate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
