// ignore_for_file: unused_element, unnecessary_cast


/// Describes a URL link.
class LinkResponseVmmigrationV1alpha1 {
  /// Describes what the link offers.
  final String description;
  /// The URL of the link.
  final String url;

  /// Creates a new [LinkResponseVmmigrationV1alpha1].
  /// [description] Describes what the link offers.
  /// [url] The URL of the link.
  LinkResponseVmmigrationV1alpha1({
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'url': url,
    };
  }

  factory LinkResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return LinkResponseVmmigrationV1alpha1(
      description: map['description'] as String,
      url: map['url'] as String,
    );
  }
}

