// ignore_for_file: unused_element, unnecessary_cast

class KnowledgeBaseContaineranalysisV1beta1 {
  /// The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  final String? name;

  /// A link to the KB in the Windows update catalog - https://www.catalog.update.microsoft.com/
  final String? url;

  /// Creates a new [KnowledgeBaseContaineranalysisV1beta1].
  /// [name] The KB name (generally of the form KB[0-9]+ i.e. KB123456).
  /// [url] A link to the KB in the Windows update catalog - https://www.catalog.update.microsoft.com/
  KnowledgeBaseContaineranalysisV1beta1({this.name, this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'url': ?url};
  }

  factory KnowledgeBaseContaineranalysisV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return KnowledgeBaseContaineranalysisV1beta1(
      name: map['name'] == null ? null : map['name'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
