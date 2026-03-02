// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomDomainAssociationCertificateValidationRecord {
  /// Certificate CNAME record name.
  final pulumi.Input<String>? name;
  /// Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  final pulumi.Input<String>? status;
  /// Record type, always `CNAME`.
  final pulumi.Input<String>? type;
  /// Certificate CNAME record value.
  final pulumi.Input<String>? value;

  /// Creates a new [CustomDomainAssociationCertificateValidationRecord].
  /// [name] Certificate CNAME record name.
  /// [status] Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  /// [type] Record type, always `CNAME`.
  /// [value] Certificate CNAME record value.
  CustomDomainAssociationCertificateValidationRecord({
    this.name,
    this.status,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'status': ?status,
      'type': ?type,
      'value': ?value,
    };
  }

  factory CustomDomainAssociationCertificateValidationRecord.fromMap(Map<String, dynamic> map) {
    return CustomDomainAssociationCertificateValidationRecord(
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      type: map['type'] == null ? null : ((map['type'] as String).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

