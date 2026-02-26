// ignore_for_file: unused_element, unnecessary_cast

class CertificateAuthorityRevocationConfigurationOcspConfiguration {
  /// Boolean value that specifies whether a custom OCSP responder is enabled.
  final bool enabled;

  /// CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as "http://" or "https://".
  final String? ocspCustomCname;

  CertificateAuthorityRevocationConfigurationOcspConfiguration({
    required this.enabled,
    this.ocspCustomCname,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final ocspCustomCnameValue = ocspCustomCname;
    if (ocspCustomCnameValue != null) {
      map['ocspCustomCname'] = ocspCustomCnameValue;
    }
    return map;
  }

  factory CertificateAuthorityRevocationConfigurationOcspConfiguration.fromMap(
      Map<String, dynamic> map) {
    return CertificateAuthorityRevocationConfigurationOcspConfiguration(
      enabled: map['enabled'] as bool,
      ocspCustomCname: map['ocspCustomCname'] == null
          ? null
          : map['ocspCustomCname'] as String,
    );
  }
}
