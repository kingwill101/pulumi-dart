// ignore_for_file: unused_element, unnecessary_cast

/// Defines sources for the suggest/search APIs.
class SourceResponse5 {
  /// Source name for content indexed by the Indexing API.
  final String name;

  /// Predefined content source for Google Apps.
  final String predefinedSource;

  SourceResponse5({
    required this.name,
    required this.predefinedSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['predefinedSource'] = predefinedSource;
    return map;
  }

  factory SourceResponse5.fromMap(Map<String, dynamic> map) {
    return SourceResponse5(
      name: map['name'] as String,
      predefinedSource: map['predefinedSource'] as String,
    );
  }
}
