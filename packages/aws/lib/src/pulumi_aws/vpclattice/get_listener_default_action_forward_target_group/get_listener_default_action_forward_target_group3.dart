// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardTargetGroup3 {
  final String targetGroupIdentifier;
  final int weight;

  GetListenerDefaultActionForwardTargetGroup3({
    required this.targetGroupIdentifier,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetGroupIdentifier'] = targetGroupIdentifier;
    map['weight'] = weight;
    return map;
  }

  factory GetListenerDefaultActionForwardTargetGroup3.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroup3(
      targetGroupIdentifier: map['targetGroupIdentifier'] as String,
      weight: map['weight'] as int,
    );
  }
}
