// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainRecord {
  /// DNS record hostname.
  final pulumi.Input<String> hostname;
  /// DNS record type (e.g. `CNAME`, `MX`, `TXT`).
  final pulumi.Input<String> type;
  /// DNS record value.
  final pulumi.Input<String> value;

  /// Creates a new [DomainRecord].
  /// [hostname] DNS record hostname.
  /// [type] DNS record type (e.g. `CNAME`, `MX`, `TXT`).
  /// [value] DNS record value.
  const DomainRecord({
    required this.hostname,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'type': type,
      'value': value,
    };
  }

  factory DomainRecord.fromMap(Map<String, dynamic> map) {
    return DomainRecord(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
