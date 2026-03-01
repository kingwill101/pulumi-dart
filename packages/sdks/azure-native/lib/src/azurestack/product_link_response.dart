// ignore_for_file: unused_element, unnecessary_cast


/// Link with additional information about a product.
class ProductLinkResponse {
  /// The description of the link.
  final String? displayName;
  /// The URI corresponding to the link.
  final String? uri;

  /// Creates a new [ProductLinkResponse].
  /// [displayName] The description of the link.
  /// [uri] The URI corresponding to the link.
  ProductLinkResponse({
    this.displayName,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'uri': ?uri,
    };
  }

  factory ProductLinkResponse.fromMap(Map<String, dynamic> map) {
    return ProductLinkResponse(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}

