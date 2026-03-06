// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DiAlarmRuleTriggerCondition {
  /// It takes effect only when the DDL notification is issued. The list of effective DDLs is required.
  final pulumi.Input<List<String>>? ddlReportTags;
  /// Alarm calculation time interval, unit minute
  final pulumi.Input<int>? duration;
  /// Severity, optional enumeration value:
  ///
  /// Warning
  ///
  /// Critical
  final pulumi.Input<String>? severity;
  /// Alarm threshold.
  ///
  /// Task status alarm: no need to fill in the threshold.
  ///
  /// failover alarm: The threshold is the number of failover alarms.
  ///
  /// Task Delay Alarm: The threshold is the delay duration, in seconds.
  final pulumi.Input<int>? threshold;

  /// Creates a new [DiAlarmRuleTriggerCondition].
  /// [ddlReportTags] It takes effect only when the DDL notification is issued. The list of effective DDLs is required.
  /// [duration] Alarm calculation time interval, unit minute
  /// [severity] Severity, optional enumeration value:
  /// [threshold] Alarm threshold.
  const DiAlarmRuleTriggerCondition({
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
      ddlReportTags: (() { final guardedValue = map['ddlReportTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threshold: (() { final guardedValue = map['threshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

