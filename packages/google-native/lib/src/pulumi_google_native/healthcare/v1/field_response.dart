// ignore_for_file: unused_element, unnecessary_cast

/// A (sub) field of a type.
class FieldResponse {
  /// The maximum number of times this field can be repeated. 0 or -1 means unbounded.
  final int maxOccurs;

  /// The minimum number of times this field must be present/repeated.
  final int minOccurs;

  /// The name of the field. For example, "PID-1" or just "1".
  final String name;

  /// The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually refers to table "0296".
  final String table;

  /// The type of this field. A Type with this name must be defined in an Hl7TypesConfig.
  final String type;

  FieldResponse({
    required this.maxOccurs,
    required this.minOccurs,
    required this.name,
    required this.table,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxOccurs'] = maxOccurs;
    map['minOccurs'] = minOccurs;
    map['name'] = name;
    map['table'] = table;
    map['type'] = type;
    return map;
  }

  factory FieldResponse.fromMap(Map<String, dynamic> map) {
    return FieldResponse(
      maxOccurs: map['maxOccurs'] as int,
      minOccurs: map['minOccurs'] as int,
      name: map['name'] as String,
      table: map['table'] as String,
      type: map['type'] as String,
    );
  }
}
