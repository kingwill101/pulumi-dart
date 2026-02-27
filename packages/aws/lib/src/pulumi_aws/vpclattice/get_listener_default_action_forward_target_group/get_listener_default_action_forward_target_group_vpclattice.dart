// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardTargetGroupVpclattice {
  final String targetGroupIdentifier;
  final int weight;

  GetListenerDefaultActionForwardTargetGroupVpclattice({
    required this.targetGroupIdentifier,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetGroupIdentifier'] = targetGroupIdentifier;
    map['weight'] = weight;
    return map;
  }

  factory GetListenerDefaultActionForwardTargetGroupVpclattice.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroupVpclattice(
      targetGroupIdentifier: map['targetGroupIdentifier'] as String,
      weight: map['weight'] as int,
    );
  }
}
