// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Maintenance window starting hour and day of week.
class MaintenanceWindowPropertiesResponse {
  /// Day of the week.
  final pulumi.Input<String>? dayOfWeek;
  /// The update start hour of the day. (0 - 23)
  final pulumi.Input<int>? hour;

  /// Creates a new [MaintenanceWindowPropertiesResponse].
  /// [dayOfWeek] Day of the week.
  /// [hour] The update start hour of the day. (0 - 23)
  const MaintenanceWindowPropertiesResponse({
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
      dayOfWeek: (() { final guardedValue = map['dayOfWeek']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hour: (() { final guardedValue = map['hour']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

