// ignore_for_file: unused_element, unnecessary_cast

/// The content of an HL7v2 message in a structured format as specified by a schema.
class SchematizedData2 {
  /// JSON output of the parser.
  final String? data;

  /// The error output of the parser.
  final String? error;

  SchematizedData2({
    this.data,
    this.error,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataValue = data;
    if (dataValue != null) {
      map['data'] = dataValue;
    }
    final errorValue = error;
    if (errorValue != null) {
      map['error'] = errorValue;
    }
    return map;
  }

  factory SchematizedData2.fromMap(Map<String, dynamic> map) {
    return SchematizedData2(
      data: map['data'] == null ? null : map['data'] as String,
      error: map['error'] == null ? null : map['error'] as String,
    );
  }
}
