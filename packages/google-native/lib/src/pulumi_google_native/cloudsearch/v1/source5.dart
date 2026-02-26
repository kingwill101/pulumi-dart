// ignore_for_file: unused_element, unnecessary_cast

import 'source_predefined_source.dart';

/// Defines sources for the suggest/search APIs.
class Source5 {
  /// Source name for content indexed by the Indexing API.
  final String? name;

  /// Predefined content source for Google Apps.
  final SourcePredefinedSource? predefinedSource;

  Source5({
    this.name,
    this.predefinedSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final predefinedSourceValue = predefinedSource;
    if (predefinedSourceValue != null) {
      map['predefinedSource'] = predefinedSourceValue.value;
    }
    return map;
  }

  factory Source5.fromMap(Map<String, dynamic> map) {
    return Source5(
      name: map['name'] == null ? null : map['name'] as String,
      predefinedSource: map['predefinedSource'] == null
          ? null
          : SourcePredefinedSource.fromValue(map['predefinedSource'] as String),
    );
  }
}
