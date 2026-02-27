// ignore_for_file: unused_element, unnecessary_cast

/// A (sub) field of a type.
class FieldHealthcareV1beta1 {
  /// The maximum number of times this field can be repeated. 0 or -1 means unbounded.
  final int? maxOccurs;

  /// The minimum number of times this field must be present/repeated.
  final int? minOccurs;

  /// The name of the field. For example, "PID-1" or just "1".
  final String? name;

  /// The HL7v2 table this field refers to. For example, PID-15 (Patient's Primary Language) usually refers to table "0296".
  final String? table;

  /// The type of this field. A Type with this name must be defined in an Hl7TypesConfig.
  final String? type;

  FieldHealthcareV1beta1({
    this.maxOccurs,
    this.minOccurs,
    this.name,
    this.table,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxOccursValue = maxOccurs;
    if (maxOccursValue != null) {
      map['maxOccurs'] = maxOccursValue;
    }
    final minOccursValue = minOccurs;
    if (minOccursValue != null) {
      map['minOccurs'] = minOccursValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = tableValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory FieldHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return FieldHealthcareV1beta1(
      maxOccurs: map['maxOccurs'] == null ? null : map['maxOccurs'] as int,
      minOccurs: map['minOccurs'] == null ? null : map['minOccurs'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      table: map['table'] == null ? null : map['table'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
