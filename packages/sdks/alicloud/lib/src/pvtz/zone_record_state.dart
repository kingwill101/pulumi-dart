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
    this.lang,
    this.priority,
    this.recordId,
    this.remark,
    this.resourceRecord,
    this.rr,
    this.status,
    this.ttl,
    this.type,
    this.userClientIp,
    this.value,
    this.zoneId,
  });

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
      lang: map['lang'] == null ? null : (map['lang']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as int).input(),
      recordId: map['recordId'] == null ? null : (map['recordId']! as String).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      resourceRecord: map['resourceRecord'] == null ? null : (map['resourceRecord']! as String).input(),
      rr: map['rr'] == null ? null : (map['rr']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      userClientIp: map['userClientIp'] == null ? null : (map['userClientIp']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

