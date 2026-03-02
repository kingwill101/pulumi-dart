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
      lang: map['lang'] == null ? null : (map['lang'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      remark: map['remark'] == null ? null : (map['remark'] as String).input(),
      resourceRecord: map['resourceRecord'] == null ? null : (map['resourceRecord'] as String).input(),
      rr: map['rr'] == null ? null : (map['rr'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl'] as int).input(),
      type: (map['type'] as String).input(),
      userClientIp: map['userClientIp'] == null ? null : (map['userClientIp'] as String).input(),
      value: (map['value'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

