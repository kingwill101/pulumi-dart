// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options.dart';

/// Represents an arbitrary window of time.
class TimeWindow {
  /// The time that the window ends. The end time should take place after the start time.
  final String? endTime;

  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final MaintenanceExclusionOptions? maintenanceExclusionOptions;

  /// The time that the window first starts.
  final String? startTime;

  /// Creates a new [TimeWindow].
  /// [endTime] The time that the window ends. The end time should take place after the start time.
  /// [maintenanceExclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] The time that the window first starts.
  TimeWindow({
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

  factory TimeWindow.fromMap(Map<String, dynamic> map) {
    return TimeWindow(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      maintenanceExclusionOptions: map['maintenanceExclusionOptions'] == null
          ? null
          : MaintenanceExclusionOptions.fromMap(
              (map['maintenanceExclusionOptions'] as Map)
                  .cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
