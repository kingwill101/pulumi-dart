// ignore_for_file: unused_element, unnecessary_cast

/// A patient identifier and associated type.
class PatientIdResponseHealthcareV1beta1 {
  /// ID type. For example, MRN or NHS.
  final String type;

  /// The patient's unique identifier.
  final String value;

  /// Creates a new [PatientIdResponseHealthcareV1beta1].
  /// [type] ID type. For example, MRN or NHS.
  /// [value] The patient's unique identifier.
  PatientIdResponseHealthcareV1beta1({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory PatientIdResponseHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return PatientIdResponseHealthcareV1beta1(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
