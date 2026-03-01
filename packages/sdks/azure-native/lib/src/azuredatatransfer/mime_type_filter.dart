// ignore_for_file: unused_element, unnecessary_cast


/// Defines a list of Media types (f.k.a MIME Types) and associated file extensions subject to filtering.
class MimeTypeFilter {
  /// A list of file extensions associated with the specified Media type (e.g., .json, .png). To specify files with no extension, use an empty string ""."
  final List<String>? extensions;
  /// The Media Types (f.k.a MIME types), following IANA standards (e.g., application/json, image/png). For a more detailed list of allowed media types please refer to the Tika documentation: https://github.com/apache/tika/blob/main/tika-core/src/main/resources/org/apache/tika/mime/tika-mimetypes.xml
  final String? media;

  /// Creates a new [MimeTypeFilter].
  /// [extensions] A list of file extensions associated with the specified Media type (e.g., .json, .png). To specify files with no extension, use an empty string ""."
  /// [media] The Media Types (f.k.a MIME types), following IANA standards (e.g., application/json, image/png). For a more detailed list of allowed media types please refer to the Tika documentation: https://github.com/apache/tika/blob/main/tika-core/src/main/resources/org/apache/tika/mime/tika-mimetypes.xml
  MimeTypeFilter({
    this.extensions,
    this.media,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensions': ?extensions,
      'media': ?media,
    };
  }

  factory MimeTypeFilter.fromMap(Map<String, dynamic> map) {
    return MimeTypeFilter(
      extensions: map['extensions'] == null ? null : (map['extensions'] as List).cast<String>(),
      media: map['media'] == null ? null : map['media'] as String,
    );
  }
}

