// ignore_for_file: unused_element, unnecessary_cast


/// Image reference information. Used in the virtual machine profile.
class ImageReferenceResponse {
  /// The actual version of the image after use.
  final String exactVersion;
  /// Image resource ID
  final String? id;
  /// The image offer if applicable.
  final String? offer;
  /// The image publisher
  final String? publisher;
  /// The image SKU
  final String? sku;
  /// The image version specified on creation.
  final String? version;

  /// Creates a new [ImageReferenceResponse].
  /// [exactVersion] The actual version of the image after use.
  /// [id] Image resource ID
  /// [offer] The image offer if applicable.
  /// [publisher] The image publisher
  /// [sku] The image SKU
  /// [version] The image version specified on creation.
  ImageReferenceResponse({
    required this.exactVersion,
    this.id,
    this.offer,
    this.publisher,
    this.sku,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exactVersion': exactVersion,
      'id': ?id,
      'offer': ?offer,
      'publisher': ?publisher,
      'sku': ?sku,
      'version': ?version,
    };
  }

  factory ImageReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ImageReferenceResponse(
      exactVersion: map['exactVersion'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      offer: map['offer'] == null ? null : map['offer'] as String,
      publisher: map['publisher'] == null ? null : map['publisher'] as String,
      sku: map['sku'] == null ? null : map['sku'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

