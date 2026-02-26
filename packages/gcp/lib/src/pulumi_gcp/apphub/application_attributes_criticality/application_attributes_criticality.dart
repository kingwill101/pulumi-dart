// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAttributesCriticality {
  /// Criticality type.
  /// Possible values are: `MISSION_CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
  final String type;

  ApplicationAttributesCriticality({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ApplicationAttributesCriticality.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesCriticality(
      type: map['type'] as String,
    );
  }
}
