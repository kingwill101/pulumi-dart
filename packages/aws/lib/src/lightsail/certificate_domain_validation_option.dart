// ignore_for_file: unused_element, unnecessary_cast

class CertificateDomainValidationOption {
  /// Domain name for which the certificate should be issued.
  final String? domainName;

  /// Name of the DNS record to create to validate the certificate.
  final String? resourceRecordName;

  /// Type of DNS record to create to validate the certificate.
  final String? resourceRecordType;

  /// Value of the DNS record to create to validate the certificate.
  final String? resourceRecordValue;

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

  factory CertificateDomainValidationOption.fromMap(Map<String, dynamic> map) {
    return CertificateDomainValidationOption(
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
