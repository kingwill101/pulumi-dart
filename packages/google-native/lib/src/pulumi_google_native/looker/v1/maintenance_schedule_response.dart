// ignore_for_file: unused_element, unnecessary_cast

/// Published upcoming future maintenance schedule.
class MaintenanceScheduleResponse {
  /// The scheduled end time for the maintenance.
  final String endTime;

  /// The scheduled start time for the maintenance.
  final String startTime;

  MaintenanceScheduleResponse({
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['startTime'] = startTime;
    return map;
  }

  factory MaintenanceScheduleResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceScheduleResponse(
      endTime: map['endTime'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
