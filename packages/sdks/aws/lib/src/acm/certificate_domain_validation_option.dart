// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificateDomainValidationOption {
  /// Domain to be validated
  final pulumi.Input<String?>? domainName;
  /// The name of the DNS record to create to validate the certificate
  final pulumi.Input<String?>? resourceRecordName;
  /// The type of DNS record to create
  final pulumi.Input<String?>? resourceRecordType;
  /// The value the DNS record needs to have
  final pulumi.Input<String?>? resourceRecordValue;

  /// Creates a new [CertificateDomainValidationOption].
  /// [domainName] Domain to be validated
  /// [resourceRecordName] The name of the DNS record to create to validate the certificate
  /// [resourceRecordType] The type of DNS record to create
  /// [resourceRecordValue] The value the DNS record needs to have
  const CertificateDomainValidationOption({
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
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRecordName: (() { final guardedValue = map['resourceRecordName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRecordType: (() { final guardedValue = map['resourceRecordType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceRecordValue: (() { final guardedValue = map['resourceRecordValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
