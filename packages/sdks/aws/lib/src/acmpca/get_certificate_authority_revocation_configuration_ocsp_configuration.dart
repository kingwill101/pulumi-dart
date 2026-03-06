// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificateAuthorityRevocationConfigurationOcspConfiguration {
  /// Boolean value that specifies whether a custom OCSP responder is enabled.
  final pulumi.Input<bool> enabled;
  /// A CNAME specifying a customized OCSP domain.
  final pulumi.Input<String> ocspCustomCname;

  /// Creates a new [GetCertificateAuthorityRevocationConfigurationOcspConfiguration].
  /// [enabled] Boolean value that specifies whether a custom OCSP responder is enabled.
  /// [ocspCustomCname] A CNAME specifying a customized OCSP domain.
  const GetCertificateAuthorityRevocationConfigurationOcspConfiguration({
    required this.enabled,
    required this.ocspCustomCname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'ocspCustomCname': ocspCustomCname,
    };
  }

  factory GetCertificateAuthorityRevocationConfigurationOcspConfiguration.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityRevocationConfigurationOcspConfiguration(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      ocspCustomCname: pulumi.Input.fromValue(map['ocspCustomCname'] as String),
    );
  }
}

