// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZoneRecordsRecord {
  /// The ID of the Private Zone Record.
  final pulumi.Input<String> id;
  /// The priority of the MX record.
  final pulumi.Input<int> priority;
  /// The ID of the Record.
  final pulumi.Input<String> recordId;
  /// The description of the Private Zone Record.
  final pulumi.Input<String> remark;
  /// The hostname of the Private Zone Record.
  final pulumi.Input<String> resourceRecord;
  /// The hostname of the Private Zone Record.
  final pulumi.Input<String> rr;
  /// The status of the Resolve record. Valid values:
  /// - `ENABLE`: Enable resolution.
  /// - `DISABLE`: Pause parsing.
  final pulumi.Input<String> status;
  /// The time to live (TTL) of the Private Zone Record.
  final pulumi.Input<int> ttl;
  /// The type of the Private Zone Record.
  final pulumi.Input<String> type;
  /// The value of the Private Zone Record.
  final pulumi.Input<String> value;

  /// Creates a new [GetZoneRecordsRecord].
  /// [id] The ID of the Private Zone Record.
  /// [priority] The priority of the MX record.
  /// [recordId] The ID of the Record.
  /// [remark] The description of the Private Zone Record.
  /// [resourceRecord] The hostname of the Private Zone Record.
  /// [rr] The hostname of the Private Zone Record.
  /// [status] The status of the Resolve record. Valid values:
  /// [ttl] The time to live (TTL) of the Private Zone Record.
  /// [type] The type of the Private Zone Record.
  /// [value] The value of the Private Zone Record.
  GetZoneRecordsRecord({
    required this.id,
    required this.priority,
    required this.recordId,
    required this.remark,
    required this.resourceRecord,
    required this.rr,
    required this.status,
    required this.ttl,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'priority': priority,
      'recordId': recordId,
      'remark': remark,
      'resourceRecord': resourceRecord,
      'rr': rr,
      'status': status,
      'ttl': ttl,
      'type': type,
      'value': value,
    };
  }

  factory GetZoneRecordsRecord.fromMap(Map<String, dynamic> map) {
    return GetZoneRecordsRecord(
      id: (map['id'] as String).input(),
      priority: (map['priority'] as int).input(),
      recordId: (map['recordId'] as String).input(),
      remark: (map['remark'] as String).input(),
      resourceRecord: (map['resourceRecord'] as String).input(),
      rr: (map['rr'] as String).input(),
      status: (map['status'] as String).input(),
      ttl: (map['ttl'] as int).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

