// ignore_for_file: unused_element, unnecessary_cast


/// ExternalDocumentation allows referencing an external resource for extended documentation.
class ExternalDocumentationApiextensionsK8sIoV1beta1 {
  final String? description;
  final String? url;

  /// Creates a new [ExternalDocumentationApiextensionsK8sIoV1beta1].
  /// [description] Optional.
  /// [url] Optional.
  ExternalDocumentationApiextensionsK8sIoV1beta1({
    this.description,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'url': ?url,
    };
  }

  factory ExternalDocumentationApiextensionsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ExternalDocumentationApiextensionsK8sIoV1beta1(
      description: map['description'] == null ? null : map['description'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

