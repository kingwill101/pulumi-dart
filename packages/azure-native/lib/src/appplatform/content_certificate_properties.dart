// ignore_for_file: unused_element, unnecessary_cast


/// Properties of certificate imported from key vault.
class ContentCertificateProperties {
  /// The content of uploaded certificate.
  final String? content;
  /// The type of the certificate source.
  /// Expected value is 'ContentCertificate'.
  final String type;

  /// Creates a new [ContentCertificateProperties].
  /// [content] The content of uploaded certificate.
  /// [type] The type of the certificate source.
  ContentCertificateProperties({
    this.content,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'type': type,
    };
  }

  factory ContentCertificateProperties.fromMap(Map<String, dynamic> map) {
    return ContentCertificateProperties(
      content: map['content'] == null ? null : map['content'] as String,
      type: map['type'] as String,
    );
  }
}

