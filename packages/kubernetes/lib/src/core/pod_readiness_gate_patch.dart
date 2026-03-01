// ignore_for_file: unused_element, unnecessary_cast


/// PodReadinessGate contains the reference to a pod condition
class PodReadinessGatePatch {
  /// ConditionType refers to a condition in the pod's condition list with matching type.
  final String? conditionType;

  /// Creates a new [PodReadinessGatePatch].
  /// [conditionType] ConditionType refers to a condition in the pod's condition list with matching type.
  PodReadinessGatePatch({
    this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionType': ?conditionType,
    };
  }

  factory PodReadinessGatePatch.fromMap(Map<String, dynamic> map) {
    return PodReadinessGatePatch(
      conditionType: map['conditionType'] == null ? null : map['conditionType'] as String,
    );
  }
}

