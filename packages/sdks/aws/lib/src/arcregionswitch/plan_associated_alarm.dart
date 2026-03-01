// ignore_for_file: unused_element, unnecessary_cast


class PlanAssociatedAlarm {
  /// Type of alarm. Valid values: `applicationHealth`, `trigger`.
  final String alarmType;
  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;
  /// External ID for cross-account role assumption.
  final String? externalId;
  /// Name of the alarm.
  final String mapBlockKey;
  /// Resource identifier (ARN) of the CloudWatch alarm.
  final String resourceIdentifier;

  /// Creates a new [PlanAssociatedAlarm].
  /// [alarmType] Type of alarm. Valid values: `applicationHealth`, `trigger`.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [mapBlockKey] Name of the alarm.
  /// [resourceIdentifier] Resource identifier (ARN) of the CloudWatch alarm.
  PlanAssociatedAlarm({
    required this.alarmType,
    this.crossAccountRole,
    this.externalId,
    required this.mapBlockKey,
    required this.resourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmType': alarmType,
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'mapBlockKey': mapBlockKey,
      'resourceIdentifier': resourceIdentifier,
    };
  }

  factory PlanAssociatedAlarm.fromMap(Map<String, dynamic> map) {
    return PlanAssociatedAlarm(
      alarmType: map['alarmType'] as String,
      crossAccountRole: map['crossAccountRole'] == null ? null : map['crossAccountRole'] as String,
      externalId: map['externalId'] == null ? null : map['externalId'] as String,
      mapBlockKey: map['mapBlockKey'] as String,
      resourceIdentifier: map['resourceIdentifier'] as String,
    );
  }
}

