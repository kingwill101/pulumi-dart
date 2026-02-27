// ignore_for_file: unused_element, unnecessary_cast

class CertificateConfigX509ConfigCaOptions {
  /// When true, the "CA" in Basic Constraints extension will be set to true.
  final bool? isCa;

  /// Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail.
  final int? maxIssuerPathLength;

  /// When true, the "CA" in Basic Constraints extension will be set to false.
  /// If both `is_ca` and `non_ca` are unset, the extension will be omitted from the CA certificate.
  final bool? nonCa;

  /// When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// if both `max_issuer_path_length` and `zero_max_issuer_path_length` are unset,
  /// the max path length will be omitted from the CA certificate.
  final bool? zeroMaxIssuerPathLength;

  CertificateConfigX509ConfigCaOptions({
    this.isCa,
    this.maxIssuerPathLength,
    this.nonCa,
    this.zeroMaxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isCaValue = isCa;
    if (isCaValue != null) {
      map['isCa'] = isCaValue;
    }
    final maxIssuerPathLengthValue = maxIssuerPathLength;
    if (maxIssuerPathLengthValue != null) {
      map['maxIssuerPathLength'] = maxIssuerPathLengthValue;
    }
    final nonCaValue = nonCa;
    if (nonCaValue != null) {
      map['nonCa'] = nonCaValue;
    }
    final zeroMaxIssuerPathLengthValue = zeroMaxIssuerPathLength;
    if (zeroMaxIssuerPathLengthValue != null) {
      map['zeroMaxIssuerPathLength'] = zeroMaxIssuerPathLengthValue;
    }
    return map;
  }

  factory CertificateConfigX509ConfigCaOptions.fromMap(
      Map<String, dynamic> map) {
    return CertificateConfigX509ConfigCaOptions(
      isCa: map['isCa'] == null ? null : map['isCa'] as bool,
      maxIssuerPathLength: map['maxIssuerPathLength'] == null
          ? null
          : map['maxIssuerPathLength'] as int,
      nonCa: map['nonCa'] == null ? null : map['nonCa'] as bool,
      zeroMaxIssuerPathLength: map['zeroMaxIssuerPathLength'] == null
          ? null
          : map['zeroMaxIssuerPathLength'] as bool,
    );
  }
}
