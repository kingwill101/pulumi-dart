// ignore_for_file: unused_element, unnecessary_cast

class LbCertificateDomainValidationRecord {
  /// Domain name (e.g., example.com) for your SSL/TLS certificate.
  final String? domainName;
  final String? resourceRecordName;
  final String? resourceRecordType;
  final String? resourceRecordValue;

  LbCertificateDomainValidationRecord({
    this.domainName,
    this.resourceRecordName,
    this.resourceRecordType,
    this.resourceRecordValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final resourceRecordNameValue = resourceRecordName;
    if (resourceRecordNameValue != null) {
      map['resourceRecordName'] = resourceRecordNameValue;
    }
    final resourceRecordTypeValue = resourceRecordType;
    if (resourceRecordTypeValue != null) {
      map['resourceRecordType'] = resourceRecordTypeValue;
    }
    final resourceRecordValueValue = resourceRecordValue;
    if (resourceRecordValueValue != null) {
      map['resourceRecordValue'] = resourceRecordValueValue;
    }
    return map;
  }

  factory LbCertificateDomainValidationRecord.fromMap(
      Map<String, dynamic> map) {
    return LbCertificateDomainValidationRecord(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
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
