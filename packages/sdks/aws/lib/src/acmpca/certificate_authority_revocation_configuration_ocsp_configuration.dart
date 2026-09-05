// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateAuthorityRevocationConfigurationOcspConfiguration {
  /// Boolean value that specifies whether a custom OCSP responder is enabled.
  final pulumi.Input<bool> enabled;
  /// CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as "http://" or "https://".
  final pulumi.Input<String?>? ocspCustomCname;

  /// Creates a new [CertificateAuthorityRevocationConfigurationOcspConfiguration].
  /// [enabled] Boolean value that specifies whether a custom OCSP responder is enabled.
  /// [ocspCustomCname] CNAME specifying a customized OCSP domain. Note: The value of the CNAME must not include a protocol prefix such as "http://" or "https://".
  const CertificateAuthorityRevocationConfigurationOcspConfiguration({
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
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      ocspCustomCname: (() { final guardedValue = map['ocspCustomCname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
