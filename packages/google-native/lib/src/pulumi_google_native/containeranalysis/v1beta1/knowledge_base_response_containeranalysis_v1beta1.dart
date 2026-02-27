// ignore_for_file: unused_element, unnecessary_cast

class KnowledgeBaseResponseContaineranalysisV1beta1 {
  /// The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  final String name;

  /// A link to the KB in the Windows update catalog - https://www.catalog.update.microsoft.com/
  final String url;

  KnowledgeBaseResponseContaineranalysisV1beta1({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['url'] = url;
    return map;
  }

  factory KnowledgeBaseResponseContaineranalysisV1beta1.fromMap(
      Map<String, dynamic> map) {
    return KnowledgeBaseResponseContaineranalysisV1beta1(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
