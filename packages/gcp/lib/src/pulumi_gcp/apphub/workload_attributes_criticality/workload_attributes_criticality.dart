// ignore_for_file: unused_element, unnecessary_cast

class WorkloadAttributesCriticality {
  /// Criticality type.
  /// Possible values are: `MISSION_CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
  final String type;

  WorkloadAttributesCriticality({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory WorkloadAttributesCriticality.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesCriticality(
      type: map['type'] as String,
    );
  }
}
