// ignore_for_file: unused_element, unnecessary_cast

class ListenerRuleActionForwardTargetGroup3 {
  final String targetGroupIdentifier;
  final int? weight;

  ListenerRuleActionForwardTargetGroup3({
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

  factory ListenerRuleActionForwardTargetGroup3.fromMap(
      Map<String, dynamic> map) {
    return ListenerRuleActionForwardTargetGroup3(
      targetGroupIdentifier: map['targetGroupIdentifier'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}
