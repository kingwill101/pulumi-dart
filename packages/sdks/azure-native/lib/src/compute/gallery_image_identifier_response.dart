// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is the gallery image definition identifier.
class GalleryImageIdentifierResponse {
  /// The name of the gallery image definition offer.
  final pulumi.Input<String> offer;
  /// The name of the gallery image definition publisher.
  final pulumi.Input<String> publisher;
  /// The name of the gallery image definition SKU.
  final pulumi.Input<String> sku;

  /// Creates a new [GalleryImageIdentifierResponse].
  /// [offer] The name of the gallery image definition offer.
  /// [publisher] The name of the gallery image definition publisher.
  /// [sku] The name of the gallery image definition SKU.
  const GalleryImageIdentifierResponse({
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
      offer: pulumi.Input.fromValue(map['offer'] as String),
      publisher: pulumi.Input.fromValue(map['publisher'] as String),
      sku: pulumi.Input.fromValue(map['sku'] as String),
    );
  }
}
