// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Datastore certificate secrets.
class CertificateDatastoreSecrets {
  /// Service principal certificate.
  final pulumi.Input<String>? certificate;
  /// Enum to determine the datastore secrets type.
  /// Expected value is 'Certificate'.
  final pulumi.Input<String> secretsType;

  /// Creates a new [CertificateDatastoreSecrets].
  /// [certificate] Service principal certificate.
  /// [secretsType] Enum to determine the datastore secrets type.
  CertificateDatastoreSecrets({
    this.certificate,
    required this.secretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'secretsType': secretsType,
    };
  }

  factory CertificateDatastoreSecrets.fromMap(Map<String, dynamic> map) {
    return CertificateDatastoreSecrets(
      certificate: map['certificate'] == null ? null : (map['certificate'] as String).input(),
      secretsType: (map['secretsType'] as String).input(),
    );
  }
}

