// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AlidnsRecord resources.
class AlidnsRecordState {
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? domainName;
  /// User language.
  final pulumi.Input<String>? lang;
  /// The resolution line of domain record. When the `type` is `FORWORD_URL`, this parameter must be `default`. Default value is `default`. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/adding-a-dns-record) or using alicloud.dns.getResolutionLines in data source to get the value.
  final pulumi.Input<String>? line;
  /// The priority of domain record. Valid values: `[1-10]`. When the `type` is `MX`, this parameter is required.
  final pulumi.Input<int>? priority;
  /// The remark of the domain record.
  final pulumi.Input<String>? remark;
  /// Host record for the domain record. This host_record can have at most 253 characters, and each part split with `.` can have at most 63 characters, and must contain only alphanumeric characters or hyphens, such as `-`, `.`, `*`, `@`, and must not begin or end with `-`.
  final pulumi.Input<String>? rr;
  /// The status of the domain record. Valid values: `ENABLE`,`DISABLE`.
  final pulumi.Input<String>? status;
  /// The effective time of domain record. Its scope depends on the edition of the cloud resolution. Free is `[600, 86400]`, Basic is `[120, 86400]`, Standard is `[60, 86400]`, Ultimate is `[10, 86400]`, Exclusive is `[1, 86400]`. Default value is `600`.
  final pulumi.Input<int>? ttl;
  /// The type of domain record. For more information, see [How to use it](https://www.alibabacloud.com/help/en/dns/dns-record-types).
  final pulumi.Input<String>? type;
  /// The IP address of the client.
  final pulumi.Input<String>? userClientIp;
  /// The value of domain record, When the `type` is `MX`,`NS`,`CNAME`,`SRV`, the server will treat the `value` as a fully qualified domain name, so it's no need to add a `.` at the end.
  final pulumi.Input<String>? value;

  /// Creates a new [AlidnsRecordState].
  /// [domainName] Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [lang] User language.
  /// [line] The resolution line of domain record. When the `type` is `FORWORD_URL`, this parameter must be `default`. Default value is `default`. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/adding-a-dns-record) or using alicloud.dns.getResolutionLines in data source to get the value.
  /// [priority] The priority of domain record. Valid values: `[1-10]`. When the `type` is `MX`, this parameter is required.
  /// [remark] The remark of the domain record.
  /// [rr] Host record for the domain record. This host_record can have at most 253 characters, and each part split with `.` can have at most 63 characters, and must contain only alphanumeric characters or hyphens, such as `-`, `.`, `*`, `@`, and must not begin or end with `-`.
  /// [status] The status of the domain record. Valid values: `ENABLE`,`DISABLE`.
  /// [ttl] The effective time of domain record. Its scope depends on the edition of the cloud resolution. Free is `[600, 86400]`, Basic is `[120, 86400]`, Standard is `[60, 86400]`, Ultimate is `[10, 86400]`, Exclusive is `[1, 86400]`. Default value is `600`.
  /// [type] The type of domain record. For more information, see [How to use it](https://www.alibabacloud.com/help/en/dns/dns-record-types).
  /// [userClientIp] The IP address of the client.
  /// [value] The value of domain record, When the `type` is `MX`,`NS`,`CNAME`,`SRV`, the server will treat the `value` as a fully qualified domain name, so it's no need to add a `.` at the end.
  AlidnsRecordState({
    this.domainName,
    this.lang,
    this.line,
    this.priority,
    this.remark,
    this.rr,
    this.status,
    this.ttl,
    this.type,
    this.userClientIp,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': ?domainName,
      'lang': ?lang,
      'line': ?line,
      'priority': ?priority,
      'remark': ?remark,
      'rr': ?rr,
      'status': ?status,
      'ttl': ?ttl,
      'type': ?type,
      'userClientIp': ?userClientIp,
      'value': ?value,
    };
  }

  factory AlidnsRecordState.fromMap(Map<String, dynamic> map) {
    return AlidnsRecordState(
      domainName: map['domainName'] == null ? null : (map['domainName']! as String).input(),
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      line: map['line'] == null ? null : (map['line']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      rr: map['rr'] == null ? null : (map['rr']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userClientIp: map['userClientIp'] == null ? null : (map['userClientIp']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

