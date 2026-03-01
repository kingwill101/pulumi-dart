// ignore_for_file: unused_element, unnecessary_cast


/// Additional, external documentation for the API.
class ExternalDocumentationResponse {
  /// Description of the documentation.
  final String? description;
  /// Title of the documentation.
  final String? title;
  /// URL pointing to the documentation.
  final String url;

  /// Creates a new [ExternalDocumentationResponse].
  /// [description] Description of the documentation.
  /// [title] Title of the documentation.
  /// [url] URL pointing to the documentation.
  ExternalDocumentationResponse({
    this.description,
    this.title,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'title': ?title,
      'url': url,
    };
  }

  factory ExternalDocumentationResponse.fromMap(Map<String, dynamic> map) {
    return ExternalDocumentationResponse(
      description: map['description'] == null ? null : map['description'] as String,
      title: map['title'] == null ? null : map['title'] as String,
      url: map['url'] as String,
    );
  }
}

