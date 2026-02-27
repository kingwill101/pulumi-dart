// ignore_for_file: unused_element, unnecessary_cast

/// The content of an HL7v2 message in a structured format as specified by a schema.
class SchematizedDataResponseHealthcareV1beta1 {
  /// JSON output of the parser.
  final String data;

  /// The error output of the parser.
  final String error;

  SchematizedDataResponseHealthcareV1beta1({
    required this.data,
    required this.error,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['error'] = error;
    return map;
  }

  factory SchematizedDataResponseHealthcareV1beta1.fromMap(
      Map<String, dynamic> map) {
    return SchematizedDataResponseHealthcareV1beta1(
      data: map['data'] as String,
      error: map['error'] as String,
    );
  }
}
