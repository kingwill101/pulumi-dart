// ignore_for_file: unused_element, unnecessary_cast

import 'public_key.dart';
import 'subject_config.dart';
import 'x509_parameters.dart';

/// A CertificateConfig describes an X.509 certificate or CSR that is to be created, as an alternative to using ASN.1.
class CertificateConfig {
  /// Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  final PublicKey? publicKey;

  /// Specifies some of the values in a certificate that are related to the subject.
  final SubjectConfig subjectConfig;

  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  final X509Parameters x509Config;

  /// Creates a new [CertificateConfig].
  /// [publicKey] Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  /// [subjectConfig] Specifies some of the values in a certificate that are related to the subject.
  /// [x509Config] Describes how some of the technical X.509 fields in a certificate should be populated.
  CertificateConfig({
    this.publicKey,
    required this.subjectConfig,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final publicKeyValue = publicKey;
    if (publicKeyValue != null) {
      map['publicKey'] = publicKeyValue.toMap();
    }
    map['subjectConfig'] = subjectConfig.toMap();
    map['x509Config'] = x509Config.toMap();
    return map;
  }

  factory CertificateConfig.fromMap(Map<String, dynamic> map) {
    return CertificateConfig(
      publicKey: map['publicKey'] == null
          ? null
          : PublicKey.fromMap(
              (map['publicKey'] as Map).cast<String, dynamic>()),
      subjectConfig: SubjectConfig.fromMap(
          (map['subjectConfig'] as Map).cast<String, dynamic>()),
      x509Config: X509Parameters.fromMap(
          (map['x509Config'] as Map).cast<String, dynamic>()),
    );
  }
}
