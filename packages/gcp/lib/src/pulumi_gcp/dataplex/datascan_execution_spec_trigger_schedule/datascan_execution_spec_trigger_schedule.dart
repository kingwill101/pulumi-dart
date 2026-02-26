// ignore_for_file: unused_element, unnecessary_cast

class DatascanExecutionSpecTriggerSchedule {
  /// Cron schedule for running scans periodically. This field is required for Schedule scans.
  final String cron;

  DatascanExecutionSpecTriggerSchedule({
    required this.cron,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cron'] = cron;
    return map;
  }

  factory DatascanExecutionSpecTriggerSchedule.fromMap(
      Map<String, dynamic> map) {
    return DatascanExecutionSpecTriggerSchedule(
      cron: map['cron'] as String,
    );
  }
}
