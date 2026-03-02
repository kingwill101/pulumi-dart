// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainRecordsRecord {
  final pulumi.Input<String> domainName;
  final pulumi.Input<String> hostRecord;
  final pulumi.Input<String> line;
  final pulumi.Input<bool> locked;
  final pulumi.Input<int> priority;
  final pulumi.Input<String> recordId;
  final pulumi.Input<String> status;
  final pulumi.Input<double> ttl;
  final pulumi.Input<String> type;
  final pulumi.Input<String> value;

  /// Creates a new [GetDomainRecordsRecord].
  /// [domainName] Required.
  /// [hostRecord] Required.
  /// [line] Required.
  /// [locked] Required.
  /// [priority] Required.
  /// [recordId] Required.
  /// [status] Required.
  /// [ttl] Required.
  /// [type] Required.
  /// [value] Required.
  GetDomainRecordsRecord({
    required this.domainName,
    required this.hostRecord,
    required this.line,
    required this.locked,
    required this.priority,
    required this.recordId,
    required this.status,
    required this.ttl,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'hostRecord': hostRecord,
      'line': line,
      'locked': locked,
      'priority': priority,
      'recordId': recordId,
      'status': status,
      'ttl': ttl,
      'type': type,
      'value': value,
    };
  }

  factory GetDomainRecordsRecord.fromMap(Map<String, dynamic> map) {
    return GetDomainRecordsRecord(
      domainName: (map['domainName'] as String).input(),
      hostRecord: (map['hostRecord'] as String).input(),
      line: (map['line'] as String).input(),
      locked: (map['locked'] as bool).input(),
      priority: (map['priority'] as int).input(),
      recordId: (map['recordId'] as String).input(),
      status: (map['status'] as String).input(),
      ttl: (map['ttl'] as double).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

