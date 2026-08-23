// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerDefaultActionForwardTargetGroup {
  /// ID or ARN of the target group.
  final pulumi.Input<String> targetGroupIdentifier;
  /// Weight assigned to the target group that determines the proportion of traffic it receives.
  final pulumi.Input<int> weight;

  /// Creates a new [GetListenerDefaultActionForwardTargetGroup].
  /// [targetGroupIdentifier] ID or ARN of the target group.
  /// [weight] Weight assigned to the target group that determines the proportion of traffic it receives.
  const GetListenerDefaultActionForwardTargetGroup({
    required this.targetGroupIdentifier,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroupIdentifier': targetGroupIdentifier,
      'weight': weight,
    };
  }

  factory GetListenerDefaultActionForwardTargetGroup.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroup(
      targetGroupIdentifier: pulumi.Input.fromValue(map['targetGroupIdentifier'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}
