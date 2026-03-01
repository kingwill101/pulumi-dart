// ignore_for_file: unused_element, unnecessary_cast

class CertificateTemplatePredefinedValuesCaOptions {
  /// Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is true, the "CA" in Basic Constraints extension will be set to true.
  final bool? isCa;

  /// Optional. Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail.
  final int? maxIssuerPathLength;

  /// Optional. When true, the "CA" in Basic Constraints extension will be set to null and omitted from the CA certificate.
  /// If both `is_ca` and `null_ca` are unset, the "CA" in Basic Constraints extension will be set to false.
  /// Note that the behavior when `is_ca = false` for this resource is different from the behavior in the Certificate Authority, Certificate and CaPool resources.
  final bool? nullCa;

  /// Optional. When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// if both `max_issuer_path_length` and `zero_max_issuer_path_length` are unset,
  /// the max path length will be omitted from the CA certificate.
  final bool? zeroMaxIssuerPathLength;

  /// Creates a new [CertificateTemplatePredefinedValuesCaOptions].
  /// [isCa] Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is true, the "CA" in Basic Constraints extension will be set to true.
  /// [maxIssuerPathLength] Optional. Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// [nullCa] Optional. When true, the "CA" in Basic Constraints extension will be set to null and omitted from the CA certificate.
  /// [zeroMaxIssuerPathLength] Optional. When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  CertificateTemplatePredefinedValuesCaOptions({
    this.isCa,
    this.maxIssuerPathLength,
    this.nullCa,
    this.zeroMaxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isCa': ?isCa,
      'maxIssuerPathLength': ?maxIssuerPathLength,
      'nullCa': ?nullCa,
      'zeroMaxIssuerPathLength': ?zeroMaxIssuerPathLength,
    };
  }

  factory CertificateTemplatePredefinedValuesCaOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return CertificateTemplatePredefinedValuesCaOptions(
      isCa: map['isCa'] == null ? null : map['isCa'] as bool,
      maxIssuerPathLength: map['maxIssuerPathLength'] == null
          ? null
          : map['maxIssuerPathLength'] as int,
      nullCa: map['nullCa'] == null ? null : map['nullCa'] as bool,
      zeroMaxIssuerPathLength: map['zeroMaxIssuerPathLength'] == null
          ? null
          : map['zeroMaxIssuerPathLength'] as bool,
    );
  }
}
