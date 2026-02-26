// ignore_for_file: unused_element, unnecessary_cast

class KnowledgeBaseResponse2 {
  /// The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  final String name;

  /// A link to the KB in the Windows update catalog - https://www.catalog.update.microsoft.com/
  final String url;

  KnowledgeBaseResponse2({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory KnowledgeBaseResponse2.fromMap(Map<String, dynamic> map) {
    return KnowledgeBaseResponse2(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
