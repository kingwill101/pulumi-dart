// ignore_for_file: unused_element, unnecessary_cast


class GetRecordsRecord {
  /// The domain name associated to the records.
  final String domainName;
  /// Host record of the domain.
  final String hostRecord;
  /// ISP line. Valid items are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/doc-detail/29807.htm)
  final String line;
  /// Indicates whether the record is locked.
  final bool locked;
  /// Priority of the `MX` record.
  final int priority;
  /// ID of the record.
  final String recordId;
  /// Record status. Valid items are `ENABLE` and `DISABLE`.
  final String status;
  /// TTL of the record.
  final double ttl;
  /// Record type. Valid items are `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  final String type;
  /// Host record value of the domain.
  final String value;

  /// Creates a new [GetRecordsRecord].
  /// [domainName] The domain name associated to the records.
  /// [hostRecord] Host record of the domain.
  /// [line] ISP line. Valid items are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/doc-detail/29807.htm)
  /// [locked] Indicates whether the record is locked.
  /// [priority] Priority of the `MX` record.
  /// [recordId] ID of the record.
  /// [status] Record status. Valid items are `ENABLE` and `DISABLE`.
  /// [ttl] TTL of the record.
  /// [type] Record type. Valid items are `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  /// [value] Host record value of the domain.
  GetRecordsRecord({
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

  factory GetRecordsRecord.fromMap(Map<String, dynamic> map) {
    return GetRecordsRecord(
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

