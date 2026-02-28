// ignore_for_file: unused_element, unnecessary_cast

class GetAuthorityConfigX509ConfigCaOption {
  /// When true, the "CA" in Basic Constraints extension will be set to true.
  final bool isCa;

  /// Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. Setting the value to 0
  /// requires setting 'zero_max_issuer_path_length = true'.
  final int maxIssuerPathLength;

  /// When true, the "CA" in Basic Constraints extension will be set to false.
  /// If both 'is_ca' and 'non_ca' are unset, the extension will be omitted from the CA certificate.
  final bool nonCa;

  /// When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// If both 'max_issuer_path_length' and 'zero_max_issuer_path_length' are unset,
  /// the max path length will be omitted from the CA certificate.
  final bool zeroMaxIssuerPathLength;

  /// Creates a new [GetAuthorityConfigX509ConfigCaOption].
  /// [isCa] When true, the "CA" in Basic Constraints extension will be set to true.
  /// [maxIssuerPathLength] Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// [nonCa] When true, the "CA" in Basic Constraints extension will be set to false.
  /// [zeroMaxIssuerPathLength] When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  GetAuthorityConfigX509ConfigCaOption({
    required this.isCa,
    required this.maxIssuerPathLength,
    required this.nonCa,
    required this.zeroMaxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isCa'] = isCa;
    map['maxIssuerPathLength'] = maxIssuerPathLength;
    map['nonCa'] = nonCa;
    map['zeroMaxIssuerPathLength'] = zeroMaxIssuerPathLength;
    return map;
  }

  factory GetAuthorityConfigX509ConfigCaOption.fromMap(
      Map<String, dynamic> map) {
    return GetAuthorityConfigX509ConfigCaOption(
      isCa: map['isCa'] as bool,
      maxIssuerPathLength: map['maxIssuerPathLength'] as int,
      nonCa: map['nonCa'] as bool,
      zeroMaxIssuerPathLength: map['zeroMaxIssuerPathLength'] as bool,
    );
  }
}
