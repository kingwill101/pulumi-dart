// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options2.dart';

/// Represents an arbitrary window of time.
class TimeWindow2 {
  /// The time that the window ends. The end time should take place after the start time.
  final String? endTime;

  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final MaintenanceExclusionOptions2? maintenanceExclusionOptions;

  /// The time that the window first starts.
  final String? startTime;

  TimeWindow2({
    this.endTime,
    this.maintenanceExclusionOptions,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endTimeValue = endTime;
    if (endTimeValue != null) {
      map['endTime'] = endTimeValue;
    }
    final maintenanceExclusionOptionsValue = maintenanceExclusionOptions;
    if (maintenanceExclusionOptionsValue != null) {
      map['maintenanceExclusionOptions'] =
          maintenanceExclusionOptionsValue.toMap();
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory TimeWindow2.fromMap(Map<String, dynamic> map) {
    return TimeWindow2(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      maintenanceExclusionOptions: map['maintenanceExclusionOptions'] == null
          ? null
          : MaintenanceExclusionOptions2.fromMap(
              (map['maintenanceExclusionOptions'] as Map)
                  .cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
