// ignore_for_file: unused_element, unnecessary_cast

class AuthorityConfigX509ConfigCaOptions {
  /// When true, the "CA" in Basic Constraints extension will be set to true.
  final bool isCa;

  /// Refers to the "path length constraint" in Basic Constraints extension. For a CA certificate, this value describes the depth of
  /// subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. Setting the value to 0
  /// requires setting `zero_max_issuer_path_length = true`.
  final int? maxIssuerPathLength;

  /// When true, the "CA" in Basic Constraints extension will be set to false.
  /// If both `is_ca` and `non_ca` are unset, the extension will be omitted from the CA certificate.
  final bool? nonCa;

  /// When true, the "path length constraint" in Basic Constraints extension will be set to 0.
  /// If both `max_issuer_path_length` and `zero_max_issuer_path_length` are unset,
  /// the max path length will be omitted from the CA certificate.
  final bool? zeroMaxIssuerPathLength;

  AuthorityConfigX509ConfigCaOptions({
    required this.isCa,
    this.maxIssuerPathLength,
    this.nonCa,
    this.zeroMaxIssuerPathLength,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['isCa'] = isCa;
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

  factory AuthorityConfigX509ConfigCaOptions.fromMap(Map<String, dynamic> map) {
    return AuthorityConfigX509ConfigCaOptions(
      isCa: map['isCa'] as bool,
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
