// ignore_for_file: unused_element, unnecessary_cast

import '../certificate_config_public_key/certificate_config_public_key.dart';
import '../certificate_config_subject_config/certificate_config_subject_config.dart';
import '../certificate_config_subject_key_id/certificate_config_subject_key_id.dart';
import '../certificate_config_x509_config/certificate_config_x509_config.dart';

class CertificateConfig {
  /// A PublicKey describes a public key.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedConfigX509Config"" pulumi-lang-dotnet=""NestedConfigX509Config"" pulumi-lang-go=""nestedConfigX509Config"" pulumi-lang-python=""nested_config_x509_config"" pulumi-lang-yaml=""nestedConfigX509Config"" pulumi-lang-java=""nestedConfigX509Config"">"nested_config_x509_config"</span>></a>The <span pulumi-lang-nodejs="`x509Config`" pulumi-lang-dotnet="`X509Config`" pulumi-lang-go="`x509Config`" pulumi-lang-python="`x509_config`" pulumi-lang-yaml="`x509Config`" pulumi-lang-java="`x509Config`">`x509_config`</span> block supports:
  final CertificateConfigPublicKey publicKey;

  /// Specifies some of the values in a certificate that are related to the subject.
  /// Structure is documented below.
  final CertificateConfigSubjectConfig subjectConfig;

  /// When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  /// Structure is documented below.
  final CertificateConfigSubjectKeyId? subjectKeyId;

  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  /// Structure is documented below.
  final CertificateConfigX509Config x509Config;

  CertificateConfig({
    required this.publicKey,
    required this.subjectConfig,
    this.subjectKeyId,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publicKey'] = publicKey.toMap();
    map['subjectConfig'] = subjectConfig.toMap();
    final subjectKeyIdValue = subjectKeyId;
    if (subjectKeyIdValue != null) {
      map['subjectKeyId'] = subjectKeyIdValue.toMap();
    }
    map['x509Config'] = x509Config.toMap();
    return map;
  }

  factory CertificateConfig.fromMap(Map<String, dynamic> map) {
    return CertificateConfig(
      publicKey: CertificateConfigPublicKey.fromMap(
          (map['publicKey'] as Map).cast<String, dynamic>()),
      subjectConfig: CertificateConfigSubjectConfig.fromMap(
          (map['subjectConfig'] as Map).cast<String, dynamic>()),
      subjectKeyId: map['subjectKeyId'] == null
          ? null
          : CertificateConfigSubjectKeyId.fromMap(
              (map['subjectKeyId'] as Map).cast<String, dynamic>()),
      x509Config: CertificateConfigX509Config.fromMap(
          (map['x509Config'] as Map).cast<String, dynamic>()),
    );
  }
}
