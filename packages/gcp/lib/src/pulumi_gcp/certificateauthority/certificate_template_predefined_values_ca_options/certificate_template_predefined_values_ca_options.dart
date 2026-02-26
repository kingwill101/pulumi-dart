// ignore_for_file: unused_element, unnecessary_cast

class CertificateTemplatePredefinedValuesCaOptions {
  /// Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is true, the "CA" in Basic Constraints extension will be set to true.
  final bool? isCa;

  /// Optional. Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail.
  final int? maxIssuerPathLength;

  /// Optional. When true, the "CA" in Basic Constraints extension will be set to null and omitted from the CA certificate.
  /// If both <span pulumi-lang-nodejs="`isCa`" pulumi-lang-dotnet="`IsCa`" pulumi-lang-go="`isCa`" pulumi-lang-python="`is_ca`" pulumi-lang-yaml="`isCa`" pulumi-lang-java="`isCa`">`is_ca`</span> and <span pulumi-lang-nodejs="`nullCa`" pulumi-lang-dotnet="`NullCa`" pulumi-lang-go="`nullCa`" pulumi-lang-python="`null_ca`" pulumi-lang-yaml="`nullCa`" pulumi-lang-java="`nullCa`">`null_ca`</span> are unset, the "CA" in Basic Constraints extension will be set to false.
  /// Note that the behavior when <span pulumi-lang-nodejs="`isCa " pulumi-lang-dotnet="`IsCa " pulumi-lang-go="`isCa " pulumi-lang-python="`is_ca " pulumi-lang-yaml="`isCa " pulumi-lang-java="`isCa ">`is_ca </span>= false` for this resource is different from the behavior in the Certificate Authority, Certificate and CaPool resources.
  final bool? nullCa;

  /// Optional. When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// if both <span pulumi-lang-nodejs="`maxIssuerPathLength`" pulumi-lang-dotnet="`MaxIssuerPathLength`" pulumi-lang-go="`maxIssuerPathLength`" pulumi-lang-python="`max_issuer_path_length`" pulumi-lang-yaml="`maxIssuerPathLength`" pulumi-lang-java="`maxIssuerPathLength`">`max_issuer_path_length`</span> and <span pulumi-lang-nodejs="`zeroMaxIssuerPathLength`" pulumi-lang-dotnet="`ZeroMaxIssuerPathLength`" pulumi-lang-go="`zeroMaxIssuerPathLength`" pulumi-lang-python="`zero_max_issuer_path_length`" pulumi-lang-yaml="`zeroMaxIssuerPathLength`" pulumi-lang-java="`zeroMaxIssuerPathLength`">`zero_max_issuer_path_length`</span> are unset,
  /// the max path length will be omitted from the CA certificate.
  final bool? zeroMaxIssuerPathLength;

  CertificateTemplatePredefinedValuesCaOptions({
    this.isCa,
    this.maxIssuerPathLength,
    this.nullCa,
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
    final nullCaValue = nullCa;
    if (nullCaValue != null) {
      map['nullCa'] = nullCaValue;
    }
    final zeroMaxIssuerPathLengthValue = zeroMaxIssuerPathLength;
    if (zeroMaxIssuerPathLengthValue != null) {
      map['zeroMaxIssuerPathLength'] = zeroMaxIssuerPathLengthValue;
    }
    return map;
  }

  factory CertificateTemplatePredefinedValuesCaOptions.fromMap(
      Map<String, dynamic> map) {
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
