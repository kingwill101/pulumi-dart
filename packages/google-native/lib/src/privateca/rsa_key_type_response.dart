// ignore_for_file: unused_element, unnecessary_cast


/// Describes an RSA key that may be used in a Certificate issued from a CaPool.
class RsaKeyTypeResponse {
  /// Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service will not enforce an explicit upper bound on RSA modulus sizes.
  final String maxModulusSize;
  /// Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service-level min RSA modulus size will continue to apply.
  final String minModulusSize;

  /// Creates a new [RsaKeyTypeResponse].
  /// [maxModulusSize] Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service will not enforce an explicit upper bound on RSA modulus sizes.
  /// [minModulusSize] Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service-level min RSA modulus size will continue to apply.
  RsaKeyTypeResponse({
    required this.maxModulusSize,
    required this.minModulusSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxModulusSize': maxModulusSize,
      'minModulusSize': minModulusSize,
    };
  }

  factory RsaKeyTypeResponse.fromMap(Map<String, dynamic> map) {
    return RsaKeyTypeResponse(
      maxModulusSize: map['maxModulusSize'] as String,
      minModulusSize: map['minModulusSize'] as String,
    );
  }
}

