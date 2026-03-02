// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateAuthorityRevocationConfigurationOcspConfiguration {
  /// Boolean value that specifies whether a custom OCSP responder is enabled.
  final pulumi.Input<bool> enabled;
  /// CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as "http://" or "https://".
  final pulumi.Input<String>? ocspCustomCname;

  /// Creates a new [CertificateAuthorityRevocationConfigurationOcspConfiguration].
  /// [enabled] Boolean value that specifies whether a custom OCSP responder is enabled.
  /// [ocspCustomCname] CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as "http://" or "https://".
  CertificateAuthorityRevocationConfigurationOcspConfiguration({
    required this.enabled,
    this.ocspCustomCname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'ocspCustomCname': ?ocspCustomCname,
    };
  }

  factory CertificateAuthorityRevocationConfigurationOcspConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityRevocationConfigurationOcspConfiguration(
      enabled: (map['enabled'] as bool).input(),
      ocspCustomCname: map['ocspCustomCname'] == null ? null : ((map['ocspCustomCname'] as String).input()).input(),
    );
  }
}

