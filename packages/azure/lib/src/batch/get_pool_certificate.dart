// ignore_for_file: unused_element, unnecessary_cast


class GetPoolCertificate {
  /// The Batch pool ID.
  final String id;
  final String storeLocation;
  final String storeName;
  final List<String> visibilities;

  /// Creates a new [GetPoolCertificate].
  /// [id] The Batch pool ID.
  /// [storeLocation] Required.
  /// [storeName] Required.
  /// [visibilities] Required.
  GetPoolCertificate({
    required this.id,
    required this.storeLocation,
    required this.storeName,
    required this.visibilities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storeLocation': storeLocation,
      'storeName': storeName,
      'visibilities': visibilities,
    };
  }

  factory GetPoolCertificate.fromMap(Map<String, dynamic> map) {
    return GetPoolCertificate(
      id: map['id'] as String,
      storeLocation: map['storeLocation'] as String,
      storeName: map['storeName'] as String,
      visibilities: (map['visibilities'] as List).cast<String>(),
    );
  }
}

