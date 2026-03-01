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
    pulumi.Output<String>? domainName,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? line,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? rr,
    pulumi.Output<String>? status,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
    pulumi.Output<String>? userClientIp,
    pulumi.Output<String>? value,
  }) :
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      line = pulumi.Input.asOptionalInput<String>(line),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      rr = pulumi.Input.asOptionalInput<String>(rr),
      status = pulumi.Input.asOptionalInput<String>(status),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp),
      value = pulumi.Input.asOptionalInput<String>(value);

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
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      line: map['line'] == null ? null : pulumi.Output.create<String>(map['line'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      rr: map['rr'] == null ? null : pulumi.Output.create<String>(map['rr'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

