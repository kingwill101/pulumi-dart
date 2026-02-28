// ignore_for_file: unused_element, unnecessary_cast


class KnowledgeBaseResponse {
  /// The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
  final String name;
  /// A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).
  final String url;

  /// Creates a new [KnowledgeBaseResponse].
  /// [name] The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
  /// [url] A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).
  KnowledgeBaseResponse({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory KnowledgeBaseResponse.fromMap(Map<String, dynamic> map) {
    return KnowledgeBaseResponse(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}

