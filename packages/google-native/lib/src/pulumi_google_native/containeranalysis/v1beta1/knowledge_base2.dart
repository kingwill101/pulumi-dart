// ignore_for_file: unused_element, unnecessary_cast

class KnowledgeBase2 {
  /// The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  final String? name;

  /// A link to the KB in the Windows update catalog - https://www.catalog.update.microsoft.com/
  final String? url;

  KnowledgeBase2({
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

  factory KnowledgeBase2.fromMap(Map<String, dynamic> map) {
    return KnowledgeBase2(
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
