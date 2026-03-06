// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceKeywords.
class GetInstanceKeywordsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of keywords.
  final List<String> ids;
  final String key;
  /// An array that consists of reserved keywords.
  final List<String> keywords;
  final String? outputFile;

  /// Creates a new [GetInstanceKeywordsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of keywords.
  /// [key] Required.
  /// [keywords] An array that consists of reserved keywords.
  /// [outputFile] Optional.
  const GetInstanceKeywordsResult({
    required this.id,
    required this.ids,
    required this.key,
    required this.keywords,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'key': key,
      'keywords': keywords,
      'outputFile': ?outputFile,
    };
  }

  factory GetInstanceKeywordsResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceKeywordsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      key: map['key'] as String,
      keywords: (map['keywords'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

