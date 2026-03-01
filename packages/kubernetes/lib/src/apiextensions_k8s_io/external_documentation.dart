// ignore_for_file: unused_element, unnecessary_cast


/// ExternalDocumentation allows referencing an external resource for extended documentation.
class ExternalDocumentation {
  final String? description;
  final String? url;

  /// Creates a new [ExternalDocumentation].
  /// [description] Optional.
  /// [url] Optional.
  ExternalDocumentation({
    this.description,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'url': ?url,
    };
  }

  factory ExternalDocumentation.fromMap(Map<String, dynamic> map) {
    return ExternalDocumentation(
      description: map['description'] == null ? null : map['description'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

