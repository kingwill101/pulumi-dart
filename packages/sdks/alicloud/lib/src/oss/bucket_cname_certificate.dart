// ignore_for_file: unused_element, unnecessary_cast


class BucketCnameCertificate {
  /// Certificate Identifier
  final String? certId;
  /// The certificate public key.
  final String? certificate;
  /// Certificate creation time
  final String? creationDate;
  /// Certificate Fingerprint
  final String? fingerprint;
  /// The certificate private key.
  final String? privateKey;
  /// Cname status
  final String? status;
  /// Certificate Type
  final String? type;
  /// Certificate validity period end time
  final String? validEndDate;
  /// Certificate validity period start time
  final String? validStartDate;

  /// Creates a new [BucketCnameCertificate].
  /// [certId] Certificate Identifier
  /// [certificate] The certificate public key.
  /// [creationDate] Certificate creation time
  /// [fingerprint] Certificate Fingerprint
  /// [privateKey] The certificate private key.
  /// [status] Cname status
  /// [type] Certificate Type
  /// [validEndDate] Certificate validity period end time
  /// [validStartDate] Certificate validity period start time
  BucketCnameCertificate({
    this.certId,
    this.certificate,
    this.creationDate,
    this.fingerprint,
    this.privateKey,
    this.status,
    this.type,
    this.validEndDate,
    this.validStartDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'certificate': ?certificate,
      'creationDate': ?creationDate,
      'fingerprint': ?fingerprint,
      'privateKey': ?privateKey,
      'status': ?status,
      'type': ?type,
      'validEndDate': ?validEndDate,
      'validStartDate': ?validStartDate,
    };
  }

  factory BucketCnameCertificate.fromMap(Map<String, dynamic> map) {
    return BucketCnameCertificate(
      certId: map['certId'] == null ? null : map['certId'] as String,
      certificate: map['certificate'] == null ? null : map['certificate'] as String,
      creationDate: map['creationDate'] == null ? null : map['creationDate'] as String,
      fingerprint: map['fingerprint'] == null ? null : map['fingerprint'] as String,
      privateKey: map['privateKey'] == null ? null : map['privateKey'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      validEndDate: map['validEndDate'] == null ? null : map['validEndDate'] as String,
      validStartDate: map['validStartDate'] == null ? null : map['validStartDate'] as String,
    );
  }
}

