// ignore_for_file: unused_element, unnecessary_cast

class ClusterMaintenancePolicyRecurringWindow {
  final String endTime;
  final String recurrence;
  final String startTime;

  ClusterMaintenancePolicyRecurringWindow({
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

  factory ClusterMaintenancePolicyRecurringWindow.fromMap(
      Map<String, dynamic> map) {
    return ClusterMaintenancePolicyRecurringWindow(
      endTime: map['endTime'] as String,
      recurrence: map['recurrence'] as String,
      startTime: map['startTime'] as String,
    );
  }
}
