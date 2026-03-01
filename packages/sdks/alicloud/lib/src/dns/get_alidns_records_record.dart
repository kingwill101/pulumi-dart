// ignore_for_file: unused_element, unnecessary_cast


class GetAlidnsRecordsRecord {
  /// The domain name associated to the records.
  final String domainName;
  /// ID of the resource.
  final String id;
  /// ISP line. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/dns/resolve-line-enumeration)
  final String line;
  /// Indicates whether the record is locked.
  final bool locked;
  /// Priority of the `MX` record.
  final int priority;
  /// ID of the record.
  final String recordId;
  /// The remark of the domain record.  **NOTE:** Available in 1.144.0+.
  final String remark;
  /// Host record of the domain.
  final String rr;
  /// Record status. Valid values: `ENABLE` and `DISABLE`.
  final String status;
  /// TTL of the record.
  final int ttl;
  /// Record type. Valid values: `A`, `NS`, `MX`, `TXT`, `CNAME`, `SRV`, `AAAA`, `REDIRECT_URL`, `FORWORD_URL` .
  final String type;
  /// Host record value of the domain.
  final String value;

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
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      line: map['line'] as String,
      locked: map['locked'] as bool,
      priority: map['priority'] as int,
      recordId: map['recordId'] as String,
      remark: map['remark'] as String,
      rr: map['rr'] as String,
      status: map['status'] as String,
      ttl: map['ttl'] as int,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

