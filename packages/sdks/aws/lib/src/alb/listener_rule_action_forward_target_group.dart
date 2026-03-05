// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionForwardTargetGroup {
  /// The Amazon Resource Name (ARN) of the target group.
  final pulumi.Input<String> arn;
  /// The weight. The range is 0 to 999.
  final pulumi.Input<int>? weight;

  /// Creates a new [ListenerRuleActionForwardTargetGroup].
  /// [arn] The Amazon Resource Name (ARN) of the target group.
  /// [weight] The weight. The range is 0 to 999.
  ListenerRuleActionForwardTargetGroup({
    required this.arn,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'weight': ?weight,
    };
  }

  factory ListenerRuleActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForwardTargetGroup(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

