// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionForwardTargetGroup {
  /// ID or Amazon Resource Name (ARN) of the target group.
  final pulumi.Input<String>? targetGroupIdentifier;
  /// Determines how requests are distributed to the target group. Only required if you specify multiple target groups for a forward action. For example, if you specify two target groups, one with a
  /// weight of 10 and the other with a weight of 20, the target group with a weight of 20 receives twice as many requests as the other target group. See [Listener rules](https://docs.aws.amazon.com/vpc-lattice/latest/ug/listeners.html#listener-rules) in the AWS documentation for additional examples. Default: `100`.
  final pulumi.Input<int>? weight;

  /// Creates a new [ListenerDefaultActionForwardTargetGroup].
  /// [targetGroupIdentifier] ID or Amazon Resource Name (ARN) of the target group.
  /// [weight] Determines how requests are distributed to the target group. Only required if you specify multiple target groups for a forward action. For example, if you specify two target groups, one with a
  ListenerDefaultActionForwardTargetGroup({
    this.targetGroupIdentifier,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroupIdentifier': ?targetGroupIdentifier,
      'weight': ?weight,
    };
  }

  factory ListenerDefaultActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForwardTargetGroup(
      targetGroupIdentifier: map['targetGroupIdentifier'] == null ? null : (map['targetGroupIdentifier'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

