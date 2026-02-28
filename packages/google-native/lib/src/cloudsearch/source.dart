// ignore_for_file: unused_element, unnecessary_cast

import 'source_predefined_source.dart';

/// Defines sources for the suggest/search APIs.
class Source {
  /// Source name for content indexed by the Indexing API.
  final String? name;

  /// Predefined content source for Google Apps.
  final SourcePredefinedSource? predefinedSource;

  /// Creates a new [Source].
  /// [name] Source name for content indexed by the Indexing API.
  /// [predefinedSource] Predefined content source for Google Apps.
  Source({
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

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      name: map['name'] == null ? null : map['name'] as String,
      predefinedSource: map['predefinedSource'] == null
          ? null
          : SourcePredefinedSource.fromValue(map['predefinedSource'] as String),
    );
  }
}
