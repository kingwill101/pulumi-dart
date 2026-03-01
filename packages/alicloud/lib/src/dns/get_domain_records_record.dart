// ignore_for_file: unused_element, unnecessary_cast


class GetDomainRecordsRecord {
  final String domainName;
  final String hostRecord;
  final String line;
  final bool locked;
  final int priority;
  final String recordId;
  final String status;
  final double ttl;
  final String type;
  final String value;

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
      domainName: map['domainName'] as String,
      hostRecord: map['hostRecord'] as String,
      line: map['line'] as String,
      locked: map['locked'] as bool,
      priority: map['priority'] as int,
      recordId: map['recordId'] as String,
      status: map['status'] as String,
      ttl: map['ttl'] as double,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

