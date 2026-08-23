// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate {
  final pulumi.Input<String> attribute;

  /// Creates a new [TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate].
  /// [attribute] Required.
  const TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate({
    required this.attribute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': attribute,
    };
  }

  factory TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate.fromMap(Map<String, dynamic> map) {
    return TrafficPolicyPolicyStatementConditionIpv6ExpressionEvaluate(
      attribute: pulumi.Input.fromValue(map['attribute'] as String),
    );
  }
}
