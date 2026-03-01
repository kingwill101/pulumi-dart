// ignore_for_file: unused_element, unnecessary_cast

class LbCertificateDomainValidationRecord {
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  final String? domainName;
  final String? resourceRecordName;
  final String? resourceRecordType;
  final String? resourceRecordValue;

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

  factory LbCertificateDomainValidationRecord.fromMap(
    Map<String, dynamic> map,
  ) {
    return LbCertificateDomainValidationRecord(
      domainName: map['domainName'] == null
          ? null
          : map['domainName'] as String,
      resourceRecordName: map['resourceRecordName'] == null
          ? null
          : map['resourceRecordName'] as String,
      resourceRecordType: map['resourceRecordType'] == null
          ? null
          : map['resourceRecordType'] as String,
      resourceRecordValue: map['resourceRecordValue'] == null
          ? null
          : map['resourceRecordValue'] as String,
    );
  }
}
