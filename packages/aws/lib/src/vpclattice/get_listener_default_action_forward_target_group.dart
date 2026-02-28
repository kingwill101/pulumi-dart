// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardTargetGroup {
  final String targetGroupIdentifier;
  final int weight;

  /// Creates a new [GetListenerDefaultActionForwardTargetGroup].
  /// [targetGroupIdentifier] Required.
  /// [weight] Required.
  GetListenerDefaultActionForwardTargetGroup({
    required this.targetGroupIdentifier,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['targetGroupIdentifier'] = targetGroupIdentifier;
    map['weight'] = weight;
    return map;
  }

  factory GetListenerDefaultActionForwardTargetGroup.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardTargetGroup(
      targetGroupIdentifier: map['targetGroupIdentifier'] as String,
      weight: map['weight'] as int,
    );
  }
}
