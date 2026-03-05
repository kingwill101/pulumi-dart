// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionForwardTargetGroup {
  /// ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  final pulumi.Input<String> arn;
  final pulumi.Input<int> weight;

  /// Creates a new [GetListenerDefaultActionForwardTargetGroup].
  /// [arn] ARN of the listener. Required if `load_balancer_arn` and `port` is not set.
  /// [weight] Required.
  GetListenerDefaultActionForwardTargetGroup({
    required this.arn,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'weight': weight,
    };
  }

  factory GetListenerDefaultActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroup(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

