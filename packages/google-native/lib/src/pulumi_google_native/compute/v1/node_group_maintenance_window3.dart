// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily maintenance operations. GCE's internal maintenance will be performed within this window.
class NodeGroupMaintenanceWindow3 {
  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final String? startTime;

  NodeGroupMaintenanceWindow3({
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory NodeGroupMaintenanceWindow3.fromMap(Map<String, dynamic> map) {
    return NodeGroupMaintenanceWindow3(
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
