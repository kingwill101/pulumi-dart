// ignore_for_file: unused_element, unnecessary_cast

class MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition {
  /// Maximum runtime allowed in seconds.
  final int? maxRuntimeInSeconds;

  MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition({
    this.maxRuntimeInSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxRuntimeInSecondsValue = maxRuntimeInSeconds;
    if (maxRuntimeInSecondsValue != null) {
      map['maxRuntimeInSeconds'] = maxRuntimeInSecondsValue;
    }
    return map;
  }

  factory MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition.fromMap(
      Map<String, dynamic> map) {
    return MonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinitionStoppingCondition(
      maxRuntimeInSeconds: map['maxRuntimeInSeconds'] == null
          ? null
          : map['maxRuntimeInSeconds'] as int,
    );
  }
}
