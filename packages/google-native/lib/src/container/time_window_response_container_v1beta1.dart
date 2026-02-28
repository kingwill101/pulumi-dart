// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options_response_container_v1beta1.dart';

/// Represents an arbitrary window of time.
class TimeWindowResponseContainerV1beta1 {
  /// The time that the window ends. The end time should take place after the start time.
  final String endTime;

  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final MaintenanceExclusionOptionsResponseContainerV1beta1
      maintenanceExclusionOptions;

  /// The time that the window first starts.
  final String startTime;

  /// Creates a new [TimeWindowResponseContainerV1beta1].
  /// [endTime] The time that the window ends. The end time should take place after the start time.
  /// [maintenanceExclusionOptions] MaintenanceExclusionOptions provides maintenance exclusion related options.
  /// [startTime] The time that the window first starts.
  TimeWindowResponseContainerV1beta1({
    required this.endTime,
    required this.maintenanceExclusionOptions,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['maintenanceExclusionOptions'] = maintenanceExclusionOptions.toMap();
    map['startTime'] = startTime;
    return map;
  }

  factory TimeWindowResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return TimeWindowResponseContainerV1beta1(
      endTime: map['endTime'] as String,
      maintenanceExclusionOptions:
          MaintenanceExclusionOptionsResponseContainerV1beta1.fromMap(
              (map['maintenanceExclusionOptions'] as Map)
                  .cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}
