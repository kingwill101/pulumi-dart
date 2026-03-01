// ignore_for_file: unused_element, unnecessary_cast

/// The content of an HL7v2 message in a structured format as specified by a schema.
class SchematizedDataResponse {
  /// JSON output of the parser.
  final String data;

  /// The error output of the parser.
  final String error;

  /// Creates a new [SchematizedDataResponse].
  /// [data] JSON output of the parser.
  /// [error] The error output of the parser.
  SchematizedDataResponse({required this.data, required this.error});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'data': data, 'error': error};
  }

  factory SchematizedDataResponse.fromMap(Map<String, dynamic> map) {
    return SchematizedDataResponse(
      data: map['data'] as String,
      error: map['error'] as String,
    );
  }
}
