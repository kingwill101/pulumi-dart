// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pvtz_zone_record_zone_record_args_doc}
/// The set of arguments for ZoneRecord.
/// {@endtemplate}
/// {@macro pulumi_pvtz_zone_record_zone_record_args_doc}
class ZoneRecordArgs {
  /// User language.
  final pulumi.Input<String>? lang;
  /// The priority of the Private Zone Record. At present, only can "MX" record support it. Valid values: [1-99]. Default to 1.
  final pulumi.Input<int>? priority;
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
  final pulumi.Input<String> type;
  final pulumi.Input<String>? userClientIp;
  /// The value of the Private Zone Record.
  final pulumi.Input<String> value;
  /// The name of the Private Zone Record.
  final pulumi.Input<String> zoneId;

  /// Creates a new [ZoneRecordArgs].
  /// [lang] User language.
  /// [priority] The priority of the Private Zone Record. At present, only can "MX" record support it. Valid values: [1-99]. Default to 1.
  /// [remark] The remark of the Private Zone Record.
  /// [resourceRecord] The resource record of the Private Zone Record.
  /// [rr] The rr of the Private Zone Record.
  /// [status] Resolve record status. Value:
  /// [ttl] The ttl of the Private Zone Record. Default to `60`.
  /// [type] The type of the Private Zone Record. Valid values: A, CNAME, TXT, MX, PTR, SRV.
  /// [userClientIp] Optional.
  /// [value] The value of the Private Zone Record.
  /// [zoneId] The name of the Private Zone Record.
  ZoneRecordArgs({
    pulumi.Output<String>? lang,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? remark,
    pulumi.Output<String>? resourceRecord,
    pulumi.Output<String>? rr,
    pulumi.Output<String>? status,
    pulumi.Output<int>? ttl,
    required pulumi.Output<String> type,
    pulumi.Output<String>? userClientIp,
    required pulumi.Output<String> value,
    required pulumi.Output<String> zoneId,
  }) :
      lang = pulumi.Input.asOptionalInput<String>(lang),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      remark = pulumi.Input.asOptionalInput<String>(remark),
      resourceRecord = pulumi.Input.asOptionalInput<String>(resourceRecord),
      rr = pulumi.Input.asOptionalInput<String>(rr),
      status = pulumi.Input.asOptionalInput<String>(status),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asInput<String>(type),
      userClientIp = pulumi.Input.asOptionalInput<String>(userClientIp),
      value = pulumi.Input.asInput<String>(value),
      zoneId = pulumi.Input.asInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lang': ?lang,
      'priority': ?priority,
      'remark': ?remark,
      'resourceRecord': ?resourceRecord,
      'rr': ?rr,
      'status': ?status,
      'ttl': ?ttl,
      'type': type,
      'userClientIp': ?userClientIp,
      'value': value,
      'zoneId': zoneId,
    };
  }

  factory ZoneRecordArgs.fromMap(Map<String, dynamic> map) {
    return ZoneRecordArgs(
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      remark: map['remark'] == null ? null : pulumi.Output.create<String>(map['remark'] as String),
      resourceRecord: map['resourceRecord'] == null ? null : pulumi.Output.create<String>(map['resourceRecord'] as String),
      rr: map['rr'] == null ? null : pulumi.Output.create<String>(map['rr'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: pulumi.Output.create<String>(map['type'] as String),
      userClientIp: map['userClientIp'] == null ? null : pulumi.Output.create<String>(map['userClientIp'] as String),
      value: pulumi.Output.create<String>(map['value'] as String),
      zoneId: pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

