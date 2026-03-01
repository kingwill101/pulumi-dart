// ignore_for_file: unused_element, unnecessary_cast


/// Additional, external documentation for the API.
class ExternalDocumentation {
  /// Description of the documentation.
  final String? description;
  /// Title of the documentation.
  final String? title;
  /// URL pointing to the documentation.
  final String url;

  /// Creates a new [ExternalDocumentation].
  /// [description] Description of the documentation.
  /// [title] Title of the documentation.
  /// [url] URL pointing to the documentation.
  ExternalDocumentation({
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

  factory ExternalDocumentation.fromMap(Map<String, dynamic> map) {
    return ExternalDocumentation(
      description: map['description'] == null ? null : map['description'] as String,
      title: map['title'] == null ? null : map['title'] as String,
      url: map['url'] as String,
    );
  }
}

