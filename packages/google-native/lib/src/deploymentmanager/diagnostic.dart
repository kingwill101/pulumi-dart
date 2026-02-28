// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostic_level.dart';

class Diagnostic {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final String? field;

  /// Level to record this diagnostic.
  final DiagnosticLevel? level;

  /// Creates a new [Diagnostic].
  /// [field] JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  /// [level] Level to record this diagnostic.
  Diagnostic({
    this.field,
    this.level,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldValue = field;
    if (fieldValue != null) {
      map['field'] = fieldValue;
    }
    final levelValue = level;
    if (levelValue != null) {
      map['level'] = levelValue.value;
    }
    return map;
  }

  factory Diagnostic.fromMap(Map<String, dynamic> map) {
    return Diagnostic(
      field: map['field'] == null ? null : map['field'] as String,
      level: map['level'] == null
          ? null
          : DiagnosticLevel.fromValue(map['level'] as String),
    );
  }
}
