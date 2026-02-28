// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for daily maintenance operations. GCE's internal maintenance will be performed within this window.
class NodeGroupMaintenanceWindowComputeBeta {
  /// Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  final String? startTime;

  /// Creates a new [NodeGroupMaintenanceWindowComputeBeta].
  /// [startTime] Start time of the window. This must be in UTC format that resolves to one of 00:00, 04:00, 08:00, 12:00, 16:00, or 20:00. For example, both 13:00-5 and 08:00 are valid.
  NodeGroupMaintenanceWindowComputeBeta({
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

  factory NodeGroupMaintenanceWindowComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return NodeGroupMaintenanceWindowComputeBeta(
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
