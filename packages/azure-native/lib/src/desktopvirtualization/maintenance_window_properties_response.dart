// ignore_for_file: unused_element, unnecessary_cast


/// Maintenance window starting hour and day of week.
class MaintenanceWindowPropertiesResponse {
  /// Day of the week.
  final String? dayOfWeek;
  /// The update start hour of the day. (0 - 23)
  final int? hour;

  /// Creates a new [MaintenanceWindowPropertiesResponse].
  /// [dayOfWeek] Day of the week.
  /// [hour] The update start hour of the day. (0 - 23)
  MaintenanceWindowPropertiesResponse({
    this.dayOfWeek,
    this.hour,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dayOfWeek': ?dayOfWeek,
      'hour': ?hour,
    };
  }

  factory MaintenanceWindowPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowPropertiesResponse(
      dayOfWeek: map['dayOfWeek'] == null ? null : map['dayOfWeek'] as String,
      hour: map['hour'] == null ? null : map['hour'] as int,
    );
  }
}

