// ignore_for_file: unused_element, unnecessary_cast

class DatascanExecutionSpecTriggerSchedule {
  /// Cron schedule for running scans periodically. This field is required for Schedule scans.
  final String cron;

  /// Creates a new [DatascanExecutionSpecTriggerSchedule].
  /// [cron] Cron schedule for running scans periodically. This field is required for Schedule scans.
  DatascanExecutionSpecTriggerSchedule({required this.cron});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cron': cron};
  }

  factory DatascanExecutionSpecTriggerSchedule.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatascanExecutionSpecTriggerSchedule(cron: map['cron'] as String);
  }
}
