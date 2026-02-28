// ignore_for_file: unused_element, unnecessary_cast

/// Describes values that are relevant in a CA certificate.
class CaOptions {
  /// Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate.
  final bool? isCa;

  /// Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate.
  final int? maxIssuerPathLength;

  /// Creates a new [CaOptions].
  /// [isCa] Optional. Refers to the "CA" X.509 extension, which is a boolean value. When this value is missing, the extension will be omitted from the CA certificate.
  /// [maxIssuerPathLength] Optional. Refers to the path length restriction X.509 extension. For a CA certificate, this value describes the depth of subordinate CA certificates that are allowed. If this value is less than 0, the request will fail. If this value is missing, the max path length will be omitted from the CA certificate.
  CaOptions({
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

  factory CaOptions.fromMap(Map<String, dynamic> map) {
    return CaOptions(
      isCa: map['isCa'] == null ? null : map['isCa'] as bool,
      maxIssuerPathLength: map['maxIssuerPathLength'] == null
          ? null
          : map['maxIssuerPathLength'] as int,
    );
  }
}
