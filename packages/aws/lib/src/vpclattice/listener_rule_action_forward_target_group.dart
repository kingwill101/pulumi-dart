// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleActionForwardTargetGroup {
  final String targetGroupIdentifier;
  final int? weight;

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
      targetGroupIdentifier: map['targetGroupIdentifier'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

