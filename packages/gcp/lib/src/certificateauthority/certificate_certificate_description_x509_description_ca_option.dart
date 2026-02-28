// ignore_for_file: unused_element, unnecessary_cast

class CertificateCertificateDescriptionX509DescriptionCaOption {
  /// When true, the "CA" in Basic Constraints extension will be set to true.
  final bool? isCa;

  /// Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail.
  final int? maxIssuerPathLength;

  /// Creates a new [CertificateCertificateDescriptionX509DescriptionCaOption].
  /// [isCa] When true, the "CA" in Basic Constraints extension will be set to true.
  /// [maxIssuerPathLength] Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  CertificateCertificateDescriptionX509DescriptionCaOption({
    this.isCa,
    this.maxIssuerPathLength,
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
    return map;
  }

  factory CertificateCertificateDescriptionX509DescriptionCaOption.fromMap(
      Map<String, dynamic> map) {
    return CertificateCertificateDescriptionX509DescriptionCaOption(
      isCa: map['isCa'] == null ? null : map['isCa'] as bool,
      maxIssuerPathLength: map['maxIssuerPathLength'] == null
          ? null
          : map['maxIssuerPathLength'] as int,
    );
  }
}
