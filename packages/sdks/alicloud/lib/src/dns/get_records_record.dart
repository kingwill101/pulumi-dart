// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRecordsRecord {
  /// The domain name associated to the records.
  final pulumi.Input<String> domainName;
  /// Host record of the domain.
  final pulumi.Input<String> hostRecord;
  /// ISP line. Valid items are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/doc-detail/29807.htm)
  final pulumi.Input<String> line;
  /// Indicates whether the record is locked.
  final pulumi.Input<bool> locked;
  /// Priority of the `MX` record.
  final pulumi.Input<int> priority;
  /// ID of the record.
  final pulumi.Input<String> recordId;
  /// Record status. Valid items are `ENABLE` and `DISABLE`.
  final pulumi.Input<String> status;
  /// TTL of the record.
  final pulumi.Input<double> ttl;
  /// Record type. Valid items are `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  final pulumi.Input<String> type;
  /// Host record value of the domain.
  final pulumi.Input<String> value;

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

