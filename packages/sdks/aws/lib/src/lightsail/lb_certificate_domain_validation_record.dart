// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LbCertificateDomainValidationRecord {
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  final pulumi.Input<String>? domainName;
  /// Name of the DNS record to create to validate the certificate.
  final pulumi.Input<String>? resourceRecordName;
  /// Type of DNS record to create to validate the certificate.
  final pulumi.Input<String>? resourceRecordType;
  /// Value of the DNS record to create to validate the certificate.
  final pulumi.Input<String>? resourceRecordValue;

  /// Creates a new [LbCertificateDomainValidationRecord].
  /// [domainName] Domain name (e.g., example.com) for your SSL/TLS certificate.
  /// [resourceRecordName] Name of the DNS record to create to validate the certificate.
  /// [resourceRecordType] Type of DNS record to create to validate the certificate.
  /// [resourceRecordValue] Value of the DNS record to create to validate the certificate.
  const LbCertificateDomainValidationRecord({
    this.domainName,
    this.resourceRecordName,
    this.resourceRecordType,
    this.resourceRecordValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'resourceRecordName': ?resourceRecordName,
      'resourceRecordType': ?resourceRecordType,
      'resourceRecordValue': ?resourceRecordValue,
    };
  }

  factory LbCertificateDomainValidationRecord.fromMap(Map<String, dynamic> map) {
    return LbCertificateDomainValidationRecord(
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRecordName: (() { final guardedValue = map['resourceRecordName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRecordType: (() { final guardedValue = map['resourceRecordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRecordValue: (() { final guardedValue = map['resourceRecordValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
