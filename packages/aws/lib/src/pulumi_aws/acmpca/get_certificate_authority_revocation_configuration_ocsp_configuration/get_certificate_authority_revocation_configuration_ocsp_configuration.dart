// ignore_for_file: unused_element, unnecessary_cast

class GetCertificateAuthorityRevocationConfigurationOcspConfiguration {
  /// Boolean value that specifies whether a custom OCSP responder is enabled.
  final bool enabled;

  /// A CNAME specifying a customized OCSP domain.
  final String ocspCustomCname;

  GetCertificateAuthorityRevocationConfigurationOcspConfiguration({
    required this.enabled,
    required this.ocspCustomCname,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['ocspCustomCname'] = ocspCustomCname;
    return map;
  }

  factory GetCertificateAuthorityRevocationConfigurationOcspConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetCertificateAuthorityRevocationConfigurationOcspConfiguration(
      enabled: map['enabled'] as bool,
      ocspCustomCname: map['ocspCustomCname'] as String,
    );
  }
}
