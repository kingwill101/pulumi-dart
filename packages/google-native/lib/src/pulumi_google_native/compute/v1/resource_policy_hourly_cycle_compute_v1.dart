// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for hourly operations.
class ResourcePolicyHourlyCycleComputeV1 {
  /// Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  final int? hoursInCycle;

  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final String? startTime;

  ResourcePolicyHourlyCycleComputeV1({
    this.hoursInCycle,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hoursInCycleValue = hoursInCycle;
    if (hoursInCycleValue != null) {
      map['hoursInCycle'] = hoursInCycleValue;
    }
    final startTimeValue = startTime;
    if (startTimeValue != null) {
      map['startTime'] = startTimeValue;
    }
    return map;
  }

  factory ResourcePolicyHourlyCycleComputeV1.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyHourlyCycleComputeV1(
      hoursInCycle:
          map['hoursInCycle'] == null ? null : map['hoursInCycle'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}
