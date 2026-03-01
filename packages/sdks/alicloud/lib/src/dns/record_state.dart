// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Record resources.
class RecordState {
  /// Host record for the domain record. This host_record can have at most 253 characters, and each part split with "." can have at most 63 characters, and must contain only alphanumeric characters or hyphens, such as "-",".","*","@",  and must not begin or end with "-".
  final pulumi.Input<String>? hostRecord;
  final pulumi.Input<bool>? locked;
  /// Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  final pulumi.Input<String>? name;
  /// The priority of domain record. Valid values are `[1-10]`. When the `type` is `MX`, this parameter is required.
  final pulumi.Input<int>? priority;
  /// The resolution line of domain record. Valid values are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. When the `type` is `FORWORD_URL`, this parameter must be `default`. Default value is `default`. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/what-is-alibaba-cloud-dns) or using alicloud.dns.getResolutionLines in data source to get the value.
  final pulumi.Input<String>? routing;
  /// The record status. `Enable` or `Disable`.
  /// * `Locked` - The record locked state. `true` or `false`.
  final pulumi.Input<String>? status;
  /// The effective time of domain record. Its scope depends on the edition of the cloud resolution. Free is `[600, 86400]`, Basic is `[120, 86400]`, Standard is `[60, 86400]`, Ultimate is `[10, 86400]`, Exclusive is `[1, 86400]`. Default value is `600`.
  final pulumi.Input<int>? ttl;
  /// The type of domain record. Valid values are `A`,`NS`,`MX`,`TXT`,`CNAME`,`SRV`,`AAAA`,`CAA`, `REDIRECT_URL` and `FORWORD_URL`.
  final pulumi.Input<String>? type;
  /// The value of domain record, When the `type` is `MX`,`NS`,`CNAME`,`SRV`, the server will treat the `value` as a fully qualified domain name, so it's no need to add a `.` at the end.
  final pulumi.Input<String>? value;

  /// Creates a new [RecordState].
  /// [hostRecord] Host record for the domain record. This host_record can have at most 253 characters, and each part split with "." can have at most 63 characters, and must contain only alphanumeric characters or hyphens, such as "-",".","*","@",  and must not begin or end with "-".
  /// [locked] Optional.
  /// [name] Name of the domain. This name without suffix can have a string of 1 to 63 characters, must contain only alphanumeric characters or "-", and must not begin or end with "-", and "-" must not in the 3th and 4th character positions at the same time. Suffix `.sh` and `.tel` are not supported.
  /// [priority] The priority of domain record. Valid values are `[1-10]`. When the `type` is `MX`, this parameter is required.
  /// [routing] The resolution line of domain record. Valid values are `default`, `telecom`, `unicom`, `mobile`, `oversea`, `edu`, `drpeng`, `btvn`, .etc. When the `type` is `FORWORD_URL`, this parameter must be `default`. Default value is `default`. For checking all resolution lines enumeration please visit [Alibaba Cloud DNS doc](https://www.alibabacloud.com/help/en/alibaba-cloud-dns/latest/what-is-alibaba-cloud-dns) or using alicloud.dns.getResolutionLines in data source to get the value.
  /// [status] The record status. `Enable` or `Disable`.
  /// [ttl] The effective time of domain record. Its scope depends on the edition of the cloud resolution. Free is `[600, 86400]`, Basic is `[120, 86400]`, Standard is `[60, 86400]`, Ultimate is `[10, 86400]`, Exclusive is `[1, 86400]`. Default value is `600`.
  /// [type] The type of domain record. Valid values are `A`,`NS`,`MX`,`TXT`,`CNAME`,`SRV`,`AAAA`,`CAA`, `REDIRECT_URL` and `FORWORD_URL`.
  /// [value] The value of domain record, When the `type` is `MX`,`NS`,`CNAME`,`SRV`, the server will treat the `value` as a fully qualified domain name, so it's no need to add a `.` at the end.
  RecordState({
    pulumi.Output<String>? hostRecord,
    pulumi.Output<bool>? locked,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? routing,
    pulumi.Output<String>? status,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
    pulumi.Output<String>? value,
  }) :
      hostRecord = pulumi.Input.asOptionalInput<String>(hostRecord),
      locked = pulumi.Input.asOptionalInput<bool>(locked),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      routing = pulumi.Input.asOptionalInput<String>(routing),
      status = pulumi.Input.asOptionalInput<String>(status),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostRecord': ?hostRecord,
      'locked': ?locked,
      'name': ?name,
      'priority': ?priority,
      'routing': ?routing,
      'status': ?status,
      'ttl': ?ttl,
      'type': ?type,
      'value': ?value,
    };
  }

  factory RecordState.fromMap(Map<String, dynamic> map) {
    return RecordState(
      hostRecord: map['hostRecord'] == null ? null : pulumi.Output.create<String>(map['hostRecord'] as String),
      locked: map['locked'] == null ? null : pulumi.Output.create<bool>(map['locked'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      routing: map['routing'] == null ? null : pulumi.Output.create<String>(map['routing'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

