// ignore_for_file: unused_element, unnecessary_cast

class CustomDomainAssociationCertificateValidationRecord {
  /// Certificate CNAME record name.
  final String? name;

  /// Current state of the certificate CNAME record validation. It should change to `SUCCESS` after App Runner completes validation with your DNS.
  final String? status;

  /// Record type, always `CNAME`.
  final String? type;

  /// Certificate CNAME record value.
  final String? value;

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
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory CustomDomainAssociationCertificateValidationRecord.fromMap(
      Map<String, dynamic> map) {
    return CustomDomainAssociationCertificateValidationRecord(
      name: map['name'] == null ? null : map['name'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
