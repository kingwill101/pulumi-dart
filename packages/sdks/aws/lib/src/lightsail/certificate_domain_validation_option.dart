// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateDomainValidationOption {
  /// Domain name for which the certificate should be issued.
  final pulumi.Input<String>? domainName;
  /// Name of the DNS record to create to validate the certificate.
  final pulumi.Input<String>? resourceRecordName;
  /// Type of DNS record to create to validate the certificate.
  final pulumi.Input<String>? resourceRecordType;
  /// Value of the DNS record to create to validate the certificate.
  final pulumi.Input<String>? resourceRecordValue;

  /// Creates a new [CertificateDomainValidationOption].
  /// [domainName] Domain name for which the certificate should be issued.
  /// [resourceRecordName] Name of the DNS record to create to validate the certificate.
  /// [resourceRecordType] Type of DNS record to create to validate the certificate.
  /// [resourceRecordValue] Value of the DNS record to create to validate the certificate.
  CertificateDomainValidationOption({
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

  factory CertificateDomainValidationOption.fromMap(Map<String, dynamic> map) {
    return CertificateDomainValidationOption(
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      resourceRecordName: map['resourceRecordName'] == null ? null : (map['resourceRecordName'] as String).input(),
      resourceRecordType: map['resourceRecordType'] == null ? null : (map['resourceRecordType'] as String).input(),
      resourceRecordValue: map['resourceRecordValue'] == null ? null : (map['resourceRecordValue'] as String).input(),
    );
  }
}

