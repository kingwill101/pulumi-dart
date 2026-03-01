// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPlatformImage.
class GetPlatformImageResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String offer;
  final String publisher;
  final String sku;
  final String version;

  /// Creates a new [GetPlatformImageResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [offer] Required.
  /// [publisher] Required.
  /// [sku] Required.
  /// [version] Required.
  GetPlatformImageResult({
    required this.id,
    required this.location,
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': version,
    };
  }

  factory GetPlatformImageResult.fromMap(Map<String, dynamic> map) {
    return GetPlatformImageResult(
      id: map['id'] as String,
      location: map['location'] as String,
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] as String,
    );
  }
}

