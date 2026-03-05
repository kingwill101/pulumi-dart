// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanAssociatedAlarm {
  /// Type of alarm. Valid values: `applicationHealth`, `trigger`.
  final pulumi.Input<String> alarmType;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// Name of the alarm.
  final pulumi.Input<String> mapBlockKey;
  /// Resource identifier (ARN) of the CloudWatch alarm.
  final pulumi.Input<String> resourceIdentifier;

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
      alarmType: pulumi.Input.fromValue(map['alarmType'] as String),
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mapBlockKey: pulumi.Input.fromValue(map['mapBlockKey'] as String),
      resourceIdentifier: pulumi.Input.fromValue(map['resourceIdentifier'] as String),
    );
  }
}

