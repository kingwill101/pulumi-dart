// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZoneRecord resources.
class ZoneRecordState {
  /// User language.
  final pulumi.Input<String>? lang;
  /// The priority of the Private Zone Record. At present, only can "MX" record support it. Valid values: [1-99]. Default to 1.
  final pulumi.Input<int>? priority;
  /// The Private Zone Record ID.
  final pulumi.Input<String>? recordId;
  /// The remark of the Private Zone Record.
  final pulumi.Input<String>? remark;
  /// The resource record of the Private Zone Record.
  final pulumi.Input<String>? resourceRecord;
  /// The rr of the Private Zone Record.
  final pulumi.Input<String>? rr;
  /// Resolve record status. Value:
  /// - ENABLE: enable resolution.
  /// - DISABLE: pause parsing.
  final pulumi.Input<String>? status;
  /// The ttl of the Private Zone Record. Default to `60`.
  final pulumi.Input<int>? ttl;
  /// The type of the Private Zone Record. Valid values: A, CNAME, TXT, MX, PTR, SRV.
  final pulumi.Input<String>? type;
  final pulumi.Input<String>? userClientIp;
  /// The value of the Private Zone Record.
  final pulumi.Input<String>? value;
  /// The name of the Private Zone Record.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ZoneRecordState].
  /// [lang] User language.
  /// [priority] The priority of the Private Zone Record. At present, only can "MX" record support it. Valid values: [1-99]. Default to 1.
  /// [recordId] The Private Zone Record ID.
  /// [remark] The remark of the Private Zone Record.
  /// [resourceRecord] The resource record of the Private Zone Record.
  /// [rr] The rr of the Private Zone Record.
  /// [status] Resolve record status. Value:
  /// [ttl] The ttl of the Private Zone Record. Default to `60`.
  /// [type] The type of the Private Zone Record. Valid values: A, CNAME, TXT, MX, PTR, SRV.
  /// [userClientIp] Optional.
  /// [value] The value of the Private Zone Record.
  /// [zoneId] The name of the Private Zone Record.
  ZoneRecordState({
    pulumi.Output<String>? lang,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? recordId,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? resourceRecord,
    pulumi.Output<String>? rr,
    pulumi.Output<String>? status,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
    pulumi.Output<String>? userClientIp,
    pulumi.Output<String>? value,
    pulumi.Output<String>? zoneId,
  }) :
      lang = pulumi.Input.asOptionalInput<String>(lang),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      recordId = pulumi.Input.asOptionalInput<String>(recordId),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      resourceRecord = pulumi.Input.asOptionalInput<String>(resourceRecord),
      rr = pulumi.Input.asOptionalInput<String>(rr),
      status = pulumi.Input.asOptionalInput<String>(status),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp),
      value = pulumi.Input.asOptionalInput<String>(value),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang': ?lang,
      'priority': ?priority,
      'recordId': ?recordId,
      'remark': ?remark,
      'resourceRecord': ?resourceRecord,
      'rr': ?rr,
      'status': ?status,
      'ttl': ?ttl,
      'type': ?type,
      'userClientIp': ?userClientIp,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory ZoneRecordState.fromMap(Map<String, dynamic> map) {
    return ZoneRecordState(
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      recordId: map['recordId'] == null ? null : pulumi.Output.create<String>(map['recordId'] as String),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      resourceRecord: map['resourceRecord'] == null ? null : pulumi.Output.create<String>(map['resourceRecord'] as String),
      rr: map['rr'] == null ? null : pulumi.Output.create<String>(map['rr'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

