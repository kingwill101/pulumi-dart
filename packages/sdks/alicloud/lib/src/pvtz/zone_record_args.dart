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
    this.lang,
    this.priority,
    this.remark,
    this.resourceRecord,
    this.rr,
    this.status,
    this.ttl,
    required this.type,
    this.userClientIp,
    required this.value,
    required this.zoneId,
  });

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
      lang: (() {
        final guardedValue = map['lang'];
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
      resourceRecord: (() {
        final guardedValue = map['resourceRecord'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rr: (() {
        final guardedValue = map['rr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
