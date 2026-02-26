// ignore_for_file: unused_element, unnecessary_cast

class KnowledgeBaseResponse {
  /// The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
  final String name;

  /// A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).
  final String url;

  KnowledgeBaseResponse({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory KnowledgeBaseResponse.fromMap(Map<String, dynamic> map) {
    return KnowledgeBaseResponse(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
