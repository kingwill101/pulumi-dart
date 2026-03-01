// ignore_for_file: unused_element, unnecessary_cast


/// Datastore certificate secrets.
class CertificateDatastoreSecrets {
  /// Service principal certificate.
  final String? certificate;
  /// Enum to determine the datastore secrets type.
  /// Expected value is 'Certificate'.
  final String secretsType;

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
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      secretsType: map['secretsType'] as String,
    );
  }
}

