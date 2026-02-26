// ignore_for_file: unused_element, unnecessary_cast

/// CertificateTemplate (v3 Extension in X.509).
class CertificateTemplateResponse {
  /// The Major version of the template. Example: 100.
  final int majorVersion;

  /// The minor version of the template. Example: 12.
  final int minorVersion;

  CertificateTemplateResponse({
    required this.majorVersion,
    required this.minorVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['majorVersion'] = majorVersion;
    map['minorVersion'] = minorVersion;
    return map;
  }

  factory CertificateTemplateResponse.fromMap(Map<String, dynamic> map) {
    return CertificateTemplateResponse(
      majorVersion: map['majorVersion'] as int,
      minorVersion: map['minorVersion'] as int,
    );
  }
}
