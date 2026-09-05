// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionForwardTargetGroup {
  /// ID or ARN of the target group.
  final pulumi.Input<String> targetGroupIdentifier;
  /// Weight assigned to the target group, controlling the prioritization and selection of each target group so that requests are distributed based on their weights. Default is `100`.
  final pulumi.Input<int?>? weight;

  /// Creates a new [ListenerRuleActionForwardTargetGroup].
  /// [targetGroupIdentifier] ID or ARN of the target group.
  /// [weight] Weight assigned to the target group, controlling the prioritization and selection of each target group so that requests are distributed based on their weights. Default is `100`.
  const ListenerRuleActionForwardTargetGroup({
    required this.targetGroupIdentifier,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroupIdentifier': targetGroupIdentifier,
      'weight': ?weight,
    };
  }

  factory ListenerRuleActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForwardTargetGroup(
      targetGroupIdentifier: pulumi.Input.fromValue(map['targetGroupIdentifier'] as String),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
