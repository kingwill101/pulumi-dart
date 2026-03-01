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
    String? lang,
    int? priority,
    String? remark,
    String? resourceRecord,
    String? rr,
    String? status,
    int? ttl,
    required String type,
    String? userClientIp,
    required String value,
    required String zoneId,
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
      lang: map['lang'] == null ? null : map['lang'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      remark: map['remark'] == null ? null : map['remark'] as String,
      resourceRecord: map['resourceRecord'] == null ? null : map['resourceRecord'] as String,
      rr: map['rr'] == null ? null : map['rr'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
      type: map['type'] as String,
      userClientIp: map['userClientIp'] == null ? null : map['userClientIp'] as String,
      value: map['value'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

