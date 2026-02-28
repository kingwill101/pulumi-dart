// ignore_for_file: unused_element, unnecessary_cast

class CaPoolIssuancePolicyAllowedKeyTypeRsa {
  /// The maximum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  /// service will not enforce an explicit upper bound on RSA modulus sizes.
  final String? maxModulusSize;

  /// The minimum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  /// service-level min RSA modulus size will continue to apply.
  final String? minModulusSize;

  /// Creates a new [CaPoolIssuancePolicyAllowedKeyTypeRsa].
  /// [maxModulusSize] The maximum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  /// [minModulusSize] The minimum allowed RSA modulus size, in bits. If this is not set, or if set to zero, the
  CaPoolIssuancePolicyAllowedKeyTypeRsa({
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

  factory CaPoolIssuancePolicyAllowedKeyTypeRsa.fromMap(
      Map<String, dynamic> map) {
    return CaPoolIssuancePolicyAllowedKeyTypeRsa(
      maxModulusSize: map['maxModulusSize'] == null
          ? null
          : map['maxModulusSize'] as String,
      minModulusSize: map['minModulusSize'] == null
          ? null
          : map['minModulusSize'] as String,
    );
  }
}
