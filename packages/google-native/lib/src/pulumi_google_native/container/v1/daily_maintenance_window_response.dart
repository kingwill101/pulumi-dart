// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily maintenance operations.
class DailyMaintenanceWindowResponse {
  /// [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario. Duration will be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "PTnHnMnS".
  final String duration;

  /// Time within the maintenance window to start the maintenance operations. Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  final String startTime;

  DailyMaintenanceWindowResponse({
    required this.duration,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['startTime'] = startTime;
    return map;
  }

  factory DailyMaintenanceWindowResponse.fromMap(Map<String, dynamic> map) {
    return DailyMaintenanceWindowResponse(
      duration: map['duration'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
