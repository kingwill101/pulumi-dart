// ignore_for_file: unused_element, unnecessary_cast


/// The content of an HL7v2 message in a structured format as specified by a schema.
class SchematizedDataHealthcareV1beta1 {
  /// JSON output of the parser.
  final String? data;
  /// The error output of the parser.
  final String? error;

  /// Creates a new [SchematizedDataHealthcareV1beta1].
  /// [data] JSON output of the parser.
  /// [error] The error output of the parser.
  SchematizedDataHealthcareV1beta1({
    this.data,
    this.error,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'error': ?error,
    };
  }

  factory SchematizedDataHealthcareV1beta1.fromMap(Map<String, dynamic> map) {
    return SchematizedDataHealthcareV1beta1(
      data: map['data'] == null ? null : map['data'] as String,
      error: map['error'] == null ? null : map['error'] as String,
    );
  }
}

