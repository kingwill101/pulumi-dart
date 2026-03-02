// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The reference information for an Azure Marketplace image.
class GalleryImageReference {
  /// The offer of the gallery image.
  final pulumi.Input<String>? offer;
  /// The OS type of the gallery image.
  final pulumi.Input<String>? osType;
  /// The publisher of the gallery image.
  final pulumi.Input<String>? publisher;
  /// The SKU of the gallery image.
  final pulumi.Input<String>? sku;
  /// The version of the gallery image.
  final pulumi.Input<String>? version;

  /// Creates a new [GalleryImageReference].
  /// [offer] The offer of the gallery image.
  /// [osType] The OS type of the gallery image.
  /// [publisher] The publisher of the gallery image.
  /// [sku] The SKU of the gallery image.
  /// [version] The version of the gallery image.
  GalleryImageReference({
    this.offer,
    this.osType,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': ?offer,
      'osType': ?osType,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory GalleryImageReference.fromMap(Map<String, dynamic> map) {
    return GalleryImageReference(
      offer: map['offer'] == null ? null : (map['offer']! as String).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      publisher: map['publisher'] == null ? null : (map['publisher']! as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

