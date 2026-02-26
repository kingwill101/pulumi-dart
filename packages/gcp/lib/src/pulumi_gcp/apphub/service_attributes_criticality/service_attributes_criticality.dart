// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttributesCriticality {
  /// Criticality type.
  /// Possible values are: `MISSION_CRITICAL`, `HIGH`, `MEDIUM`, `LOW`.
  final String type;

  ServiceAttributesCriticality({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ServiceAttributesCriticality.fromMap(Map<String, dynamic> map) {
    return ServiceAttributesCriticality(
      type: map['type'] as String,
    );
  }
}
