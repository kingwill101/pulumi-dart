// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options_container_v1beta1.dart';

/// Represents an arbitrary window of time.
class TimeWindowContainerV1beta1 {
  /// The time that the window ends. The end time should take place after the start time.
  final String? endTime;

  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final MaintenanceExclusionOptionsContainerV1beta1?
      maintenanceExclusionOptions;

  /// The time that the window first starts.
  final String? startTime;

  TimeWindowContainerV1beta1({
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

  factory TimeWindowContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return TimeWindowContainerV1beta1(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      maintenanceExclusionOptions: map['maintenanceExclusionOptions'] == null
          ? null
          : MaintenanceExclusionOptionsContainerV1beta1.fromMap(
              (map['maintenanceExclusionOptions'] as Map)
                  .cast<String, dynamic>()),
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
