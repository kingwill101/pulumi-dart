// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_authority_certificate_authority_configuration_subject.dart';

class CertificateAuthorityCertificateAuthorityConfiguration {
  /// Type of the public key algorithm and size, in bits, of the key pair that your key pair creates when it issues a certificate. Valid values can be found in the [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CertificateAuthorityConfiguration.html).
  final pulumi.Input<String> keyAlgorithm;
  /// Name of the algorithm your private CA uses to sign certificate requests. Valid values can be found in the [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CertificateAuthorityConfiguration.html).
  final pulumi.Input<String> signingAlgorithm;
  /// Nested argument that contains X.500 distinguished name information. At least one nested attribute must be specified.
  final pulumi.Input<CertificateAuthorityCertificateAuthorityConfigurationSubject> subject;

  /// Creates a new [CertificateAuthorityCertificateAuthorityConfiguration].
  /// [keyAlgorithm] Type of the public key algorithm and size, in bits, of the key pair that your key pair creates when it issues a certificate. Valid values can be found in the [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CertificateAuthorityConfiguration.html).
  /// [signingAlgorithm] Name of the algorithm your private CA uses to sign certificate requests. Valid values can be found in the [ACM PCA Documentation](https://docs.aws.amazon.com/privateca/latest/APIReference/API_CertificateAuthorityConfiguration.html).
  /// [subject] Nested argument that contains X.500 distinguished name information. At least one nested attribute must be specified.
  CertificateAuthorityCertificateAuthorityConfiguration({
    required this.keyAlgorithm,
    required this.signingAlgorithm,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyAlgorithm': keyAlgorithm,
      'signingAlgorithm': signingAlgorithm,
      'subject': pulumi.Input.mapInputValue<CertificateAuthorityCertificateAuthorityConfigurationSubject, Map<String, dynamic>>(subject, (value) => value.toMap()),
    };
  }

  factory CertificateAuthorityCertificateAuthorityConfiguration.fromMap(Map<String, dynamic> map) {
    return CertificateAuthorityCertificateAuthorityConfiguration(
      keyAlgorithm: (map['keyAlgorithm'] as String).input(),
      signingAlgorithm: (map['signingAlgorithm'] as String).input(),
      subject: (CertificateAuthorityCertificateAuthorityConfigurationSubject.fromMap((map['subject']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

