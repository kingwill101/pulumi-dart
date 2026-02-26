// ignore_for_file: unused_element, unnecessary_cast

class DiagnosticResponse2 {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final String field;

  /// Level to record this diagnostic.
  final String level;

  DiagnosticResponse2({
    required this.field,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['field'] = field;
    map['level'] = level;
    return map;
  }

  factory DiagnosticResponse2.fromMap(Map<String, dynamic> map) {
    return DiagnosticResponse2(
      field: map['field'] as String,
      level: map['level'] as String,
    );
  }
}
