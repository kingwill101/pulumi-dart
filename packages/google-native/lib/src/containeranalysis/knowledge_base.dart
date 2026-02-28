// ignore_for_file: unused_element, unnecessary_cast

class KnowledgeBase {
  /// The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
  final String? name;

  /// A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).
  final String? url;

  /// Creates a new [KnowledgeBase].
  /// [name] The KB name (generally of the form KB[0-9]+ (e.g., KB123456)).
  /// [url] A link to the KB in the [Windows update catalog] (https://www.catalog.update.microsoft.com/).
  KnowledgeBase({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory KnowledgeBase.fromMap(Map<String, dynamic> map) {
    return KnowledgeBase(
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
