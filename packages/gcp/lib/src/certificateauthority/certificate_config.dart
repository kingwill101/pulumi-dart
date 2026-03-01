// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_config_public_key.dart';
import 'certificate_config_subject_config.dart';
import 'certificate_config_subject_key_id.dart';
import 'certificate_config_x509_config.dart';

class CertificateConfig {
  /// A PublicKey describes a public key.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_config_x509_config"></a>The `x509_config` block supports:
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

  /// Creates a new [CertificateConfig].
  /// [publicKey] A PublicKey describes a public key.
  /// [subjectConfig] Specifies some of the values in a certificate that are related to the subject.
  /// [subjectKeyId] When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  /// [x509Config] Describes how some of the technical X.509 fields in a certificate should be populated.
  CertificateConfig({
    required this.publicKey,
    required this.subjectConfig,
    this.subjectKeyId,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publicKey': publicKey.toMap(),
      'subjectConfig': subjectConfig.toMap(),
      'subjectKeyId': ?subjectKeyId == null ? null : subjectKeyId!.toMap(),
      'x509Config': x509Config.toMap(),
    };
  }

  factory CertificateConfig.fromMap(Map<String, dynamic> map) {
    return CertificateConfig(
      publicKey: CertificateConfigPublicKey.fromMap(
        (map['publicKey'] as Map).cast<String, dynamic>(),
      ),
      subjectConfig: CertificateConfigSubjectConfig.fromMap(
        (map['subjectConfig'] as Map).cast<String, dynamic>(),
      ),
      subjectKeyId: map['subjectKeyId'] == null
          ? null
          : CertificateConfigSubjectKeyId.fromMap(
              (map['subjectKeyId'] as Map).cast<String, dynamic>(),
            ),
      x509Config: CertificateConfigX509Config.fromMap(
        (map['x509Config'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
