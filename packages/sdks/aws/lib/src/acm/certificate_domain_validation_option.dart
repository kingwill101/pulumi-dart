// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateDomainValidationOption {
  /// Fully qualified domain name (FQDN) in the certificate.
  final pulumi.Input<String>? domainName;
  /// The name of the DNS record to create to validate the certificate
  final pulumi.Input<String>? resourceRecordName;
  /// The type of DNS record to create
  final pulumi.Input<String>? resourceRecordType;
  /// The value the DNS record needs to have
  final pulumi.Input<String>? resourceRecordValue;

  /// Creates a new [CertificateDomainValidationOption].
  /// [domainName] Fully qualified domain name (FQDN) in the certificate.
  /// [resourceRecordName] The name of the DNS record to create to validate the certificate
  /// [resourceRecordType] The type of DNS record to create
  /// [resourceRecordValue] The value the DNS record needs to have
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
      domainName: map['domainName'] == null ? null : ((map['domainName'] as String).input()).input(),
      resourceRecordName: map['resourceRecordName'] == null ? null : ((map['resourceRecordName'] as String).input()).input(),
      resourceRecordType: map['resourceRecordType'] == null ? null : ((map['resourceRecordType'] as String).input()).input(),
      resourceRecordValue: map['resourceRecordValue'] == null ? null : ((map['resourceRecordValue'] as String).input()).input(),
    );
  }
}

