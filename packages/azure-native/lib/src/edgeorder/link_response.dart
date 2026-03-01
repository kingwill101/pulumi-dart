// ignore_for_file: unused_element, unnecessary_cast


/// Returns link related to the product.
class LinkResponse {
  /// Type of link.
  final String linkType;
  /// Url of the link.
  final String linkUrl;

  /// Creates a new [LinkResponse].
  /// [linkType] Type of link.
  /// [linkUrl] Url of the link.
  LinkResponse({
    required this.linkType,
    required this.linkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkType': linkType,
      'linkUrl': linkUrl,
    };
  }

  factory LinkResponse.fromMap(Map<String, dynamic> map) {
    return LinkResponse(
      linkType: map['linkType'] as String,
      linkUrl: map['linkUrl'] as String,
    );
  }
}

