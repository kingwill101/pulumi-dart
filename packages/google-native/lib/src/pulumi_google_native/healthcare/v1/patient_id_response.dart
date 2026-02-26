// ignore_for_file: unused_element, unnecessary_cast

/// A patient identifier and associated type.
class PatientIdResponse {
  /// ID type. For example, MRN or NHS.
  final String type;

  /// The patient's unique identifier.
  final String value;

  PatientIdResponse({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    map['value'] = value;
    return map;
  }

  factory PatientIdResponse.fromMap(Map<String, dynamic> map) {
    return PatientIdResponse(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}
