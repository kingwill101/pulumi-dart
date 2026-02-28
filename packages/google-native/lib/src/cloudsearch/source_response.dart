// ignore_for_file: unused_element, unnecessary_cast


/// Defines sources for the suggest/search APIs.
class SourceResponse {
  /// Source name for content indexed by the Indexing API.
  final String name;
  /// Predefined content source for Google Apps.
  final String predefinedSource;

  /// Creates a new [SourceResponse].
  /// [name] Source name for content indexed by the Indexing API.
  /// [predefinedSource] Predefined content source for Google Apps.
  SourceResponse({
    required this.name,
    required this.predefinedSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'predefinedSource': predefinedSource,
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      name: map['name'] as String,
      predefinedSource: map['predefinedSource'] as String,
    );
  }
}

