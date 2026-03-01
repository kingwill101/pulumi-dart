// ignore_for_file: unused_element, unnecessary_cast


/// The content link.
class ContentLink {
  /// The content link URI.
  final String? uri;

  /// Creates a new [ContentLink].
  /// [uri] The content link URI.
  ContentLink({
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': ?uri,
    };
  }

  factory ContentLink.fromMap(Map<String, dynamic> map) {
    return ContentLink(
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

