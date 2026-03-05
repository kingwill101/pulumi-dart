// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleActionForwardTargetGroup {
  /// ARN of the Listener Rule.
  /// Either `arn` or `listener_arn` must be set.
  final pulumi.Input<String> arn;
  /// Weight of the target group.
  final pulumi.Input<int> weight;

  /// Creates a new [GetListenerRuleActionForwardTargetGroup].
  /// [arn] ARN of the Listener Rule.
  /// [weight] Weight of the target group.
  GetListenerRuleActionForwardTargetGroup({
    required this.arn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'weight': weight,
    };
  }

  factory GetListenerRuleActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionForwardTargetGroup(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

