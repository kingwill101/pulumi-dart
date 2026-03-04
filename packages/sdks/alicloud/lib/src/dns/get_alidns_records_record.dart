// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlidnsRecordsRecord {
  /// The domain name associated to the records.
  final pulumi.Input<String> domainName;

  /// ID of the resource.
  final pulumi.Input<String> id;

  /// ISP line. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/dns/resolve-line-enumeration)
  final pulumi.Input<String> line;

  /// Indicates whether the record is locked.
  final pulumi.Input<bool> locked;

  /// Priority of the `MX` record.
  final pulumi.Input<int> priority;

  /// ID of the record.
  final pulumi.Input<String> recordId;

  /// The remark of the domain record.  **NOTE:** Available in 1.144.0+.
  final pulumi.Input<String> remark;

  /// Host record of the domain.
  final pulumi.Input<String> rr;

  /// Record status. Valid values: `ENABLE` and `DISABLE`.
  final pulumi.Input<String> status;

  /// TTL of the record.
  final pulumi.Input<int> ttl;

  /// Record type. Valid values: `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  final pulumi.Input<String> type;

  /// Host record value of the domain.
  final pulumi.Input<String> value;

  /// Creates a new [GetAlidnsRecordsRecord].
  /// [domainName] The domain name associated to the records.
  /// [id] ID of the resource.
  /// [line] ISP line. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/dns/resolve-line-enumeration)
  /// [locked] Indicates whether the record is locked.
  /// [priority] Priority of the `MX` record.
  /// [recordId] ID of the record.
  /// [remark] The remark of the domain record.  **NOTE:** Available in 1.144.0+.
  /// [rr] Host record of the domain.
  /// [status] Record status. Valid values: `ENABLE` and `DISABLE`.
  /// [ttl] TTL of the record.
  /// [type] Record type. Valid values: `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  /// [value] Host record value of the domain.
  GetAlidnsRecordsRecord({
    required this.domainName,
    required this.id,
    required this.line,
    required this.locked,
    required this.priority,
    required this.recordId,
    required this.remark,
    required this.rr,
    required this.status,
    required this.ttl,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'id': id,
      'line': line,
      'locked': locked,
      'priority': priority,
      'recordId': recordId,
      'remark': remark,
      'rr': rr,
      'status': status,
      'ttl': ttl,
      'type': type,
      'value': value,
    };
  }

  factory GetAlidnsRecordsRecord.fromMap(Map<String, dynamic> map) {
    return GetAlidnsRecordsRecord(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      line: pulumi.Input.fromValue(map['line'] as String),
      locked: pulumi.Input.fromValue(map['locked'] as bool),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      recordId: pulumi.Input.fromValue(map['recordId'] as String),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      rr: pulumi.Input.fromValue(map['rr'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      ttl: pulumi.Input.fromValue(map['ttl'] as int),
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
