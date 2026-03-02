// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// This is the gallery image definition identifier.
class GalleryImageIdentifier {
  /// The name of the gallery image definition offer.
  final pulumi.Input<String> offer;
  /// The name of the gallery image definition publisher.
  final pulumi.Input<String> publisher;
  /// The name of the gallery image definition SKU.
  final pulumi.Input<String> sku;

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
      offer: (map['offer'] as String).input(),
      publisher: (map['publisher'] as String).input(),
      sku: (map['sku'] as String).input(),
    );
  }
}

