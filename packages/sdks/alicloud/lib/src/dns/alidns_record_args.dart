// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_alidns_record_alidns_record_args_doc}
/// The set of arguments for AlidnsRecord.
/// {@endtemplate}
/// {@macro pulumi_dns_alidns_record_alidns_record_args_doc}
class AlidnsRecordArgs {
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String> domainName;

  /// User language.
  final pulumi.Input<String>? lang;

  /// The resolution line of domain record. When the `type` is `FORWORD_URL`, this parameter must be `default`. Default value is `default`. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/adding-a-dns-record) or using alicloud.dns.getResolutionLines in data source to get the value.
  final pulumi.Input<String>? line;

  /// The priority of domain record. Valid values: `[1-10]`. When the `type` is `MX`, this parameter is required.
  final pulumi.Input<int>? priority;

  /// The remark of the domain record.
  final pulumi.Input<String>? remark;

  /// Host record for the domain record. This host_record can have at most 253 characters, and each part split with `.` can have at most 63 characters, and must contain only alphanumeric characters or hyphens, such as `-`, `.`, `*`, `@`, and must not begin or end with `-`.
  final pulumi.Input<String> rr;

  /// The status of the domain record. Valid values: `ENABLE`,`DISABLE`.
  final pulumi.Input<String>? status;

  /// The effective time of domain record. Its scope depends on the edition of the cloud resolution. Free is `[600, 86400]`, Basic is `[120, 86400]`, Standard is `[60, 86400]`, Ultimate is `[10, 86400]`, Exclusive is `[1, 86400]`. Default value is `600`.
  final pulumi.Input<int>? ttl;

  /// The type of domain record. For more information, see [How to use it](https://www.alibabacloud.com/help/en/dns/dns-record-types).
  final pulumi.Input<String> type;

  /// The IP address of the client.
  final pulumi.Input<String>? userClientIp;

  /// The value of domain record, When the `type` is `MX`,`NS`,`CNAME`,`SRV`, the server will treat the `value` as a fully qualified domain name, so it's no need to add a `.` at the end.
  final pulumi.Input<String> value;

  /// Creates a new [AlidnsRecordArgs].
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
  AlidnsRecordArgs({
    required this.domainName,
    this.lang,
    this.line,
    this.priority,
    this.remark,
    required this.rr,
    this.status,
    this.ttl,
    required this.type,
    this.userClientIp,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'lang': ?lang,
      'line': ?line,
      'priority': ?priority,
      'remark': ?remark,
      'rr': rr,
      'status': ?status,
      'ttl': ?ttl,
      'type': type,
      'userClientIp': ?userClientIp,
      'value': value,
    };
  }

  factory AlidnsRecordArgs.fromMap(Map<String, dynamic> map) {
    return AlidnsRecordArgs(
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      line: (() {
        final guardedValue = map['line'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      remark: (() {
        final guardedValue = map['remark'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rr: pulumi.Input.fromValue(map['rr'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ttl: (() {
        final guardedValue = map['ttl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userClientIp: (() {
        final guardedValue = map['userClientIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
