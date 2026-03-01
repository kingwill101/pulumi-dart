// ignore_for_file: unused_element, unnecessary_cast


class GetPoolStorageImageReference {
  /// The Batch pool ID.
  final String id;
  final String offer;
  /// The name of the extension handler publisher.The name of the extension handler publisher.
  final String publisher;
  final String sku;
  final String version;

  /// Creates a new [GetPoolStorageImageReference].
  /// [id] The Batch pool ID.
  /// [offer] Required.
  /// [publisher] The name of the extension handler publisher.The name of the extension handler publisher.
  /// [sku] Required.
  /// [version] Required.
  GetPoolStorageImageReference({
    required this.id,
    required this.offer,
    required this.publisher,
    required this.sku,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'offer': offer,
      'publisher': publisher,
      'sku': sku,
      'version': version,
    };
  }

  factory GetPoolStorageImageReference.fromMap(Map<String, dynamic> map) {
    return GetPoolStorageImageReference(
      id: map['id'] as String,
      offer: map['offer'] as String,
      publisher: map['publisher'] as String,
      sku: map['sku'] as String,
      version: map['version'] as String,
    );
  }
}

