// ignore_for_file: unused_element, unnecessary_cast

class GetClusterMaintenancePolicyRecurringWindow {
  final String endTime;
  final String recurrence;
  final String startTime;

  /// Creates a new [GetClusterMaintenancePolicyRecurringWindow].
  /// [endTime] Required.
  /// [recurrence] Required.
  /// [startTime] Required.
  GetClusterMaintenancePolicyRecurringWindow({
    required this.endTime,
    required this.recurrence,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endTime'] = endTime;
    map['recurrence'] = recurrence;
    map['startTime'] = startTime;
    return map;
  }

  factory GetClusterMaintenancePolicyRecurringWindow.fromMap(
      Map<String, dynamic> map) {
    return GetClusterMaintenancePolicyRecurringWindow(
      endTime: map['endTime'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
