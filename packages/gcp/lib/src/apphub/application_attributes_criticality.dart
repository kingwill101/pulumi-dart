// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAttributesCriticality {
  /// Criticality type.
  /// Possible values are: `MISSION_CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
  final String type;

  /// Creates a new [ApplicationAttributesCriticality].
  /// [type] Criticality type.
  ApplicationAttributesCriticality({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory ApplicationAttributesCriticality.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesCriticality(type: map['type'] as String);
  }
}
