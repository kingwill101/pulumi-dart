// ignore_for_file: unused_element, unnecessary_cast

import 'public_key_response.dart';
import 'subject_config_response.dart';
import 'x509_parameters_response.dart';

/// A CertificateConfig describes an X.509 certificate or CSR that is to be created, as an alternative to using ASN.1.
class CertificateConfigResponse {
  /// Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  final PublicKeyResponse publicKey;

  /// Specifies some of the values in a certificate that are related to the subject.
  final SubjectConfigResponse subjectConfig;

  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  final X509ParametersResponse x509Config;

  /// Creates a new [CertificateConfigResponse].
  /// [publicKey] Optional. The public key that corresponds to this config. This is, for example, used when issuing Certificates, but not when creating a self-signed CertificateAuthority or CertificateAuthority CSR.
  /// [subjectConfig] Specifies some of the values in a certificate that are related to the subject.
  /// [x509Config] Describes how some of the technical X.509 fields in a certificate should be populated.
  CertificateConfigResponse({
    required this.publicKey,
    required this.subjectConfig,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey.toMap(),
      'subjectConfig': subjectConfig.toMap(),
      'x509Config': x509Config.toMap(),
    };
  }

  factory CertificateConfigResponse.fromMap(Map<String, dynamic> map) {
    return CertificateConfigResponse(
      publicKey: PublicKeyResponse.fromMap(
        (map['publicKey'] as Map).cast<String, dynamic>(),
      ),
      subjectConfig: SubjectConfigResponse.fromMap(
        (map['subjectConfig'] as Map).cast<String, dynamic>(),
      ),
      x509Config: X509ParametersResponse.fromMap(
        (map['x509Config'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
