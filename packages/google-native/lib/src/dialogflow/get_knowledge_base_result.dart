// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getKnowledgeBase.
class GetKnowledgeBaseResult {
  /// The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  final String displayName;
  /// Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, expect this to be present for non en-us languages. When unspecified, the default language code en-us applies.
  final String languageCode;
  /// The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  final String name;

  /// Creates a new [GetKnowledgeBaseResult].
  /// [displayName] The display name of the knowledge base. The name must be 1024 bytes or less; otherwise, the creation request fails.
  /// [languageCode] Language which represents the KnowledgeBase. When the KnowledgeBase is created/updated, expect this to be present for non en-us languages. When unspecified, the default language code en-us applies.
  /// [name] The knowledge base resource name. The name must be empty when creating a knowledge base. Format: `projects//locations//knowledgeBases/`.
  GetKnowledgeBaseResult({
    required this.displayName,
    required this.languageCode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'languageCode': languageCode,
      'name': name,
    };
  }

  factory GetKnowledgeBaseResult.fromMap(Map<String, dynamic> map) {
    return GetKnowledgeBaseResult(
      displayName: map['displayName'] as String,
      languageCode: map['languageCode'] as String,
      name: map['name'] as String,
    );
  }
}

