// ignore_for_file: unused_element, unnecessary_cast

import 'diagnostic_level2.dart';

class Diagnostic2 {
  /// JsonPath expression on the resource that if non empty, indicates that this field needs to be extracted as a diagnostic.
  final String? field;

  /// Level to record this diagnostic.
  final DiagnosticLevel2? level;

  Diagnostic2({
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

  factory Diagnostic2.fromMap(Map<String, dynamic> map) {
    return Diagnostic2(
      field: map['field'] == null ? null : map['field'] as String,
      level: map['level'] == null
          ? null
          : DiagnosticLevel2.fromValue(map['level'] as String),
    );
  }
}
