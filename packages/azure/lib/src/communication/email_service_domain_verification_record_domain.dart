// ignore_for_file: unused_element, unnecessary_cast


class EmailServiceDomainVerificationRecordDomain {
  /// The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  final String? name;
  /// Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  final int? ttl;
  /// Type of the DNS record. Example: TXT
  final String? type;
  /// Value of the DNS record.
  final String? value;

  /// Creates a new [EmailServiceDomainVerificationRecordDomain].
  /// [name] The name of the Email Communication Service resource. If `domain_management` is `AzureManaged`, the name must be `AzureManagedDomain`. Changing this forces a new Email Communication Service to be created.
  /// [ttl] Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  /// [type] Type of the DNS record. Example: TXT
  /// [value] Value of the DNS record.
  EmailServiceDomainVerificationRecordDomain({
    this.name,
    this.ttl,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'ttl': ?ttl,
      'type': ?type,
      'value': ?value,
    };
  }

  factory EmailServiceDomainVerificationRecordDomain.fromMap(Map<String, dynamic> map) {
    return EmailServiceDomainVerificationRecordDomain(
      name: map['name'] == null ? null : map['name'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

