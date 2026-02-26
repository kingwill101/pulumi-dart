// ignore_for_file: unused_element, unnecessary_cast

import 'maintenance_exclusion_options_response2.dart';

/// Represents an arbitrary window of time.
class TimeWindowResponse2 {
  /// The time that the window ends. The end time should take place after the start time.
  final String endTime;

  /// MaintenanceExclusionOptions provides maintenance exclusion related options.
  final MaintenanceExclusionOptionsResponse2 maintenanceExclusionOptions;

  /// The time that the window first starts.
  final String startTime;

  TimeWindowResponse2({
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

  factory TimeWindowResponse2.fromMap(Map<String, dynamic> map) {
    return TimeWindowResponse2(
      endTime: map['endTime'] as String,
      maintenanceExclusionOptions: MaintenanceExclusionOptionsResponse2.fromMap(
          (map['maintenanceExclusionOptions'] as Map).cast<String, dynamic>()),
      startTime: map['startTime'] as String,
    );
  }
}
