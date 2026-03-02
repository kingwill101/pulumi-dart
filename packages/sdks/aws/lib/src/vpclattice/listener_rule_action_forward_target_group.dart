// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionForwardTargetGroup {
  final pulumi.Input<String> targetGroupIdentifier;
  final pulumi.Input<int>? weight;

  /// Creates a new [ListenerRuleActionForwardTargetGroup].
  /// [targetGroupIdentifier] Required.
  /// [weight] Optional.
  ListenerRuleActionForwardTargetGroup({
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
      targetGroupIdentifier: (map['targetGroupIdentifier'] as String).input(),
      weight: map['weight'] == null ? null : (map['weight'] as int).input(),
    );
  }
}

