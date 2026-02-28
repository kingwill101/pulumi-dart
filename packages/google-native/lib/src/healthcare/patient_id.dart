// ignore_for_file: unused_element, unnecessary_cast

/// A patient identifier and associated type.
class PatientId {
  /// ID type. For example, MRN or NHS.
  final String? type;

  /// The patient's unique identifier.
  final String? value;

  /// Creates a new [PatientId].
  /// [type] ID type. For example, MRN or NHS.
  /// [value] The patient's unique identifier.
  PatientId({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory PatientId.fromMap(Map<String, dynamic> map) {
    return PatientId(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
