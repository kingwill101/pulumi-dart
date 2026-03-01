// ignore_for_file: unused_element, unnecessary_cast


/// A class that represents a VerificationStatus record.
class DnsRecordResponse {
  /// Name of the DNS record.
  final String name;
  /// Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  final int ttl;
  /// Type of the DNS record. Example: TXT
  final String type;
  /// Value of the DNS record.
  final String value;

  /// Creates a new [DnsRecordResponse].
  /// [name] Name of the DNS record.
  /// [ttl] Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  /// [type] Type of the DNS record. Example: TXT
  /// [value] Value of the DNS record.
  DnsRecordResponse({
    required this.name,
    required this.ttl,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'ttl': ttl,
      'type': type,
      'value': value,
    };
  }

  factory DnsRecordResponse.fromMap(Map<String, dynamic> map) {
    return DnsRecordResponse(
      name: map['name'] as String,
      ttl: map['ttl'] as int,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

