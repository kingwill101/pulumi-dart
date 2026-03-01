// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationAttributeCriticality {
  /// Criticality type. Possible values: ["MISSION_CRITICAL", "HIGH", "MEDIUM", "LOW"]
  final String type;

  /// Creates a new [GetApplicationAttributeCriticality].
  /// [type] Criticality type. Possible values: ["MISSION_CRITICAL", "HIGH", "MEDIUM", "LOW"]
  GetApplicationAttributeCriticality({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory GetApplicationAttributeCriticality.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttributeCriticality(type: map['type'] as String);
  }
}
