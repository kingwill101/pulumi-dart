// ignore_for_file: unused_element, unnecessary_cast

class GroupInstanceRefreshPreferencesAlarmSpecification {
  /// List of Cloudwatch alarms. If any of these alarms goes into ALARM state, Instance Refresh is failed.
  final List<String>? alarms;

  /// Creates a new [GroupInstanceRefreshPreferencesAlarmSpecification].
  /// [alarms] List of Cloudwatch alarms. If any of these alarms goes into ALARM state, Instance Refresh is failed.
  GroupInstanceRefreshPreferencesAlarmSpecification({
    this.alarms,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alarmsValue = alarms;
    if (alarmsValue != null) {
      map['alarms'] = alarmsValue;
    }
    return map;
  }

  factory GroupInstanceRefreshPreferencesAlarmSpecification.fromMap(
      Map<String, dynamic> map) {
    return GroupInstanceRefreshPreferencesAlarmSpecification(
      alarms:
          map['alarms'] == null ? null : (map['alarms'] as List).cast<String>(),
    );
  }
}
