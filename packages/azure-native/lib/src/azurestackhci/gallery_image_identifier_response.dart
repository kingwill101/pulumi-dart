// ignore_for_file: unused_element, unnecessary_cast


/// This is the gallery image definition identifier.
class GalleryImageIdentifierResponse {
  /// The name of the gallery image definition offer.
  final String offer;
  /// The name of the gallery image definition publisher.
  final String publisher;
  /// The name of the gallery image definition SKU.
  final String sku;

  /// Creates a new [GalleryImageIdentifierResponse].
  /// [offer] The name of the gallery image definition offer.
  /// [publisher] The name of the gallery image definition publisher.
  /// [sku] The name of the gallery image definition SKU.
  GalleryImageIdentifierResponse({
    required this.offer,
    required this.publisher,
    required this.sku,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
    };
  }

  factory GalleryImageIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return GalleryImageIdentifierResponse(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
    );
  }
}

