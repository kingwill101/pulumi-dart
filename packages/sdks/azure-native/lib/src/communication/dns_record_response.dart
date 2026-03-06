// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class that represents a VerificationStatus record.
class DnsRecordResponse {
  /// Name of the DNS record.
  final pulumi.Input<String> name;
  /// Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  final pulumi.Input<int> ttl;
  /// Type of the DNS record. Example: TXT
  final pulumi.Input<String> type;
  /// Value of the DNS record.
  final pulumi.Input<String> value;

  /// Creates a new [DnsRecordResponse].
  /// [name] Name of the DNS record.
  /// [ttl] Represents an expiry time in seconds to represent how long this entry can be cached by the resolver, default = 3600sec.
  /// [type] Type of the DNS record. Example: TXT
  /// [value] Value of the DNS record.
  const DnsRecordResponse({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

