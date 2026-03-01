// ignore_for_file: unused_element, unnecessary_cast


class GetZoneRecordsRecord {
  /// The ID of the Private Zone Record.
  final String id;
  /// The priority of the MX record.
  final int priority;
  /// The ID of the Record.
  final String recordId;
  /// The description of the Private Zone Record.
  final String remark;
  /// The hostname of the Private Zone Record.
  final String resourceRecord;
  /// The hostname of the Private Zone Record.
  final String rr;
  /// The status of the Resolve record. Valid values:
  /// - `ENABLE`: Enable resolution.
  /// - `DISABLE`: Pause parsing.
  final String status;
  /// The time to live (TTL) of the Private Zone Record.
  final int ttl;
  /// The type of the Private Zone Record.
  final String type;
  /// The value of the Private Zone Record.
  final String value;

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
      id: map['id'] as String,
      priority: map['priority'] as int,
      recordId: map['recordId'] as String,
      remark: map['remark'] as String,
      resourceRecord: map['resourceRecord'] as String,
      rr: map['rr'] as String,
      status: map['status'] as String,
      ttl: map['ttl'] as int,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

