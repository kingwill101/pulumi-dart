// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketCnameCertificate {
  /// Certificate Identifier
  final pulumi.Input<String>? certId;
  /// The certificate public key.
  final pulumi.Input<String>? certificate;
  /// Certificate creation time
  final pulumi.Input<String>? creationDate;
  /// Certificate Fingerprint
  final pulumi.Input<String>? fingerprint;
  /// The certificate private key.
  final pulumi.Input<String>? privateKey;
  /// Cname status
  final pulumi.Input<String>? status;
  /// Certificate Type
  final pulumi.Input<String>? type;
  /// Certificate validity period end time
  final pulumi.Input<String>? validEndDate;
  /// Certificate validity period start time
  final pulumi.Input<String>? validStartDate;

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
      certId: map['certId'] == null ? null : (map['certId']! as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      creationDate: map['creationDate'] == null ? null : (map['creationDate']! as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      validEndDate: map['validEndDate'] == null ? null : (map['validEndDate']! as String).input(),
      validStartDate: map['validStartDate'] == null ? null : (map['validStartDate']! as String).input(),
    );
  }
}

