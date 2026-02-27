// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindowResponseContainerV1beta1 {
  /// [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  final String duration;

  /// Time within the maintenance window to start the maintenance operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  final String startTime;

  DailyMaintenanceWindowResponseContainerV1beta1({
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['startTime'] = startTime;
    return map;
  }

  factory DailyMaintenanceWindowResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DailyMaintenanceWindowResponseContainerV1beta1(
      duration: map['duration'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
