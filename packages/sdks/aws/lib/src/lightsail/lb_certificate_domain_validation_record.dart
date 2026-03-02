// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LbCertificateDomainValidationRecord {
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  final pulumi.Input<String>? domainName;
  final pulumi.Input<String>? resourceRecordName;
  final pulumi.Input<String>? resourceRecordType;
  final pulumi.Input<String>? resourceRecordValue;

  /// Creates a new [LbCertificateDomainValidationRecord].
  /// [domainName] Domain name (e.g., example.com) for your SSL/TLS certificate.
  /// [resourceRecordName] Optional.
  /// [resourceRecordType] Optional.
  /// [resourceRecordValue] Optional.
  LbCertificateDomainValidationRecord({
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
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      resourceRecordName: map['resourceRecordName'] == null ? null : ((map['resourceRecordName'] as String).input()).input(),
      resourceRecordType: map['resourceRecordType'] == null ? null : ((map['resourceRecordType'] as String).input()).input(),
      resourceRecordValue: map['resourceRecordValue'] == null ? null : ((map['resourceRecordValue'] as String).input()).input(),
    );
  }
}

