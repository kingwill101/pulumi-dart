// ignore_for_file: unused_element, unnecessary_cast

class ClusterMaintenancePolicyMaintenanceExclusionWindow {
  /// The time that the window ends. The end time must take place after the
  /// start time.
  final String? endTime;

  /// The time that the window first starts.
  final String? startTime;

  /// Creates a new [ClusterMaintenancePolicyMaintenanceExclusionWindow].
  /// [endTime] The time that the window ends. The end time must take place after the
  /// [startTime] The time that the window first starts.
  ClusterMaintenancePolicyMaintenanceExclusionWindow({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endTime': ?endTime, 'startTime': ?startTime};
  }

  factory ClusterMaintenancePolicyMaintenanceExclusionWindow.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterMaintenancePolicyMaintenanceExclusionWindow(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
