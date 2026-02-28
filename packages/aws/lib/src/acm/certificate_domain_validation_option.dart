// ignore_for_file: unused_element, unnecessary_cast

class CertificateDomainValidationOption {
  /// Fully qualified domain name (FQDN) in the certificate.
  final String? domainName;

  /// The name of the DNS record to create to validate the certificate
  final String? resourceRecordName;

  /// The type of DNS record to create
  final String? resourceRecordType;

  /// The value the DNS record needs to have
  final String? resourceRecordValue;

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
