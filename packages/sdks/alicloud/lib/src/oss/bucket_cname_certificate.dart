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
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validEndDate: (() { final guardedValue = map['validEndDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validStartDate: (() { final guardedValue = map['validStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

