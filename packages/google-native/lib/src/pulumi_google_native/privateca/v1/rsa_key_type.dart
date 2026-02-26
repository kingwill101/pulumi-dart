// ignore_for_file: unused_element, unnecessary_cast

/// Describes an RSA key that may be used in a Certificate issued from a CaPool.
class RsaKeyType {
  /// Optional. The maximum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service will not enforce an explicit upper bound on RSA modulus sizes.
  final String? maxModulusSize;

  /// Optional. The minimum allowed RSA modulus size (inclusive), in bits. If this is not set, or if set to zero, the service-level min RSA modulus size will continue to apply.
  final String? minModulusSize;

  RsaKeyType({
    this.maxModulusSize,
    this.minModulusSize,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxModulusSizeValue = maxModulusSize;
    if (maxModulusSizeValue != null) {
      map['maxModulusSize'] = maxModulusSizeValue;
    }
    final minModulusSizeValue = minModulusSize;
    if (minModulusSizeValue != null) {
      map['minModulusSize'] = minModulusSizeValue;
    }
    return map;
  }

  factory RsaKeyType.fromMap(Map<String, dynamic> map) {
    return RsaKeyType(
      maxModulusSize: map['maxModulusSize'] == null
          ? null
          : map['maxModulusSize'] as String,
      minModulusSize: map['minModulusSize'] == null
          ? null
          : map['minModulusSize'] as String,
    );
  }
}
