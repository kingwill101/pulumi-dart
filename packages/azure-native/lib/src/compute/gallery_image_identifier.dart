// ignore_for_file: unused_element, unnecessary_cast


/// This is the gallery image definition identifier.
class GalleryImageIdentifier {
  /// The name of the gallery image definition offer.
  final String offer;
  /// The name of the gallery image definition publisher.
  final String publisher;
  /// The name of the gallery image definition SKU.
  final String sku;

  /// Creates a new [GalleryImageIdentifier].
  /// [offer] The name of the gallery image definition offer.
  /// [publisher] The name of the gallery image definition publisher.
  /// [sku] The name of the gallery image definition SKU.
  GalleryImageIdentifier({
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

  factory GalleryImageIdentifier.fromMap(Map<String, dynamic> map) {
    return GalleryImageIdentifier(
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
    );
  }
}

