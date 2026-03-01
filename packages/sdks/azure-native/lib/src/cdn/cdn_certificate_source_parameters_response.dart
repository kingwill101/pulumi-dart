// ignore_for_file: unused_element, unnecessary_cast


/// Defines the parameters for using CDN managed certificate for securing custom domain.
class CdnCertificateSourceParametersResponse {
  /// Type of certificate used
  final String certificateType;
  /// Expected value is 'CdnCertificateSourceParameters'.
  final String typeName;

  /// Creates a new [CdnCertificateSourceParametersResponse].
  /// [certificateType] Type of certificate used
  /// [typeName] Expected value is 'CdnCertificateSourceParameters'.
  CdnCertificateSourceParametersResponse({
    required this.certificateType,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateType': certificateType,
      'typeName': typeName,
    };
  }

  factory CdnCertificateSourceParametersResponse.fromMap(Map<String, dynamic> map) {
    return CdnCertificateSourceParametersResponse(
      certificateType: map['certificateType'] as String,
      typeName: map['typeName'] as String,
    );
  }
}

