// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionForwardTargetGroupVpclattice {
  final String targetGroupIdentifier;
  final int? weight;

  ListenerRuleActionForwardTargetGroupVpclattice({
    required this.targetGroupIdentifier,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetGroupIdentifier'] = targetGroupIdentifier;
    final weightValue = weight;
    if (weightValue != null) {
      map['weight'] = weightValue;
    }
    return map;
  }

  factory ListenerRuleActionForwardTargetGroupVpclattice.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleActionForwardTargetGroupVpclattice(
      targetGroupIdentifier: map['targetGroupIdentifier'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
