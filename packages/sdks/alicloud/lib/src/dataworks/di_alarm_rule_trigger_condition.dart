// ignore_for_file: unused_element, unnecessary_cast


class DiAlarmRuleTriggerCondition {
  /// It takes effect only when the DDL notification is issued. The list of effective DDLs is required.
  final List<String>? ddlReportTags;
  /// Alarm calculation time interval, unit minute
  final int? duration;
  /// Severity, optional enumeration value:
  ///
  /// Warning
  ///
  /// Critical
  final String? severity;
  /// Alarm threshold.
  ///
  /// Task status alarm: no need to fill in the threshold.
  ///
  /// failover alarm: The threshold is the number of failover alarms.
  ///
  /// Task Delay Alarm: The threshold is the delay duration, in seconds.
  final int? threshold;

  /// Creates a new [DiAlarmRuleTriggerCondition].
  /// [ddlReportTags] It takes effect only when the DDL notification is issued. The list of effective DDLs is required.
  /// [duration] Alarm calculation time interval, unit minute
  /// [severity] Severity, optional enumeration value:
  /// [threshold] Alarm threshold.
  DiAlarmRuleTriggerCondition({
    this.ddlReportTags,
    this.duration,
    this.severity,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ddlReportTags': ?ddlReportTags,
      'duration': ?duration,
      'severity': ?severity,
      'threshold': ?threshold,
    };
  }

  factory DiAlarmRuleTriggerCondition.fromMap(Map<String, dynamic> map) {
    return DiAlarmRuleTriggerCondition(
      ddlReportTags: map['ddlReportTags'] == null ? null : (map['ddlReportTags'] as List).cast<String>(),
      duration: map['duration'] == null ? null : map['duration'] as int,
      severity: map['severity'] == null ? null : map['severity'] as String,
      threshold: map['threshold'] == null ? null : map['threshold'] as int,
    );
  }
}

