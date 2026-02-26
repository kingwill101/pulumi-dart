// ignore_for_file: unused_element, unnecessary_cast

class PlanAssociatedAlarm {
  /// Type of alarm. Valid values: `applicationHealth`, <span pulumi-lang-nodejs="`trigger`" pulumi-lang-dotnet="`Trigger`" pulumi-lang-go="`trigger`" pulumi-lang-python="`trigger`" pulumi-lang-yaml="`trigger`" pulumi-lang-java="`trigger`">`trigger`</span>.
  final String alarmType;

  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

  /// Name of the alarm.
  final String mapBlockKey;

  /// Resource identifier (ARN) of the CloudWatch alarm.
  final String resourceIdentifier;

  PlanAssociatedAlarm({
    required this.alarmType,
    this.crossAccountRole,
    this.externalId,
    required this.mapBlockKey,
    required this.resourceIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarmType'] = alarmType;
    final crossAccountRoleValue = crossAccountRole;
    if (crossAccountRoleValue != null) {
      map['crossAccountRole'] = crossAccountRoleValue;
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    map['mapBlockKey'] = mapBlockKey;
    map['resourceIdentifier'] = resourceIdentifier;
    return map;
  }

  factory PlanAssociatedAlarm.fromMap(Map<String, dynamic> map) {
    return PlanAssociatedAlarm(
      alarmType: map['alarmType'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      mapBlockKey: map['mapBlockKey'] as String,
      resourceIdentifier: map['resourceIdentifier'] as String,
    );
  }
}
