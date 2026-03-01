// ignore_for_file: unused_element, unnecessary_cast


class PoolCertificate {
  /// The ID of the Batch Pool.
  final String id;
  final String storeLocation;
  final String? storeName;
  final List<String>? visibilities;

  /// Creates a new [PoolCertificate].
  /// [id] The ID of the Batch Pool.
  /// [storeLocation] Required.
  /// [storeName] Optional.
  /// [visibilities] Optional.
  PoolCertificate({
    required this.id,
    required this.storeLocation,
    this.storeName,
    this.visibilities,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'storeLocation': storeLocation,
      'storeName': ?storeName,
      'visibilities': ?visibilities,
    };
  }

  factory PoolCertificate.fromMap(Map<String, dynamic> map) {
    return PoolCertificate(
      id: map['id'] as String,
      storeLocation: map['storeLocation'] as String,
      storeName: map['storeName'] == null ? null : map['storeName'] as String,
      visibilities: map['visibilities'] == null ? null : (map['visibilities'] as List).cast<String>(),
    );
  }
}

