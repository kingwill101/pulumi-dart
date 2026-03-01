// ignore_for_file: unused_element, unnecessary_cast


/// The reference information for an Azure Marketplace image.
class GalleryImageReference {
  /// The offer of the gallery image.
  final String? offer;
  /// The OS type of the gallery image.
  final String? osType;
  /// The publisher of the gallery image.
  final String? publisher;
  /// The SKU of the gallery image.
  final String? sku;
  /// The version of the gallery image.
  final String? version;

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
      offer: map['offer'] == null ? null : map['offer'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

