// ignore_for_file: unused_element, unnecessary_cast

/// Time window specified for hourly operations.
class ResourcePolicyHourlyCycleResponse2 {
  /// [Output only] Duration of the time window, automatically chosen to be smallest possible in the given scenario.
  final String duration;

  /// Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  final int hoursInCycle;

  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final String startTime;

  ResourcePolicyHourlyCycleResponse2({
    required this.duration,
    required this.hoursInCycle,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['hoursInCycle'] = hoursInCycle;
    map['startTime'] = startTime;
    return map;
  }

  factory ResourcePolicyHourlyCycleResponse2.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyHourlyCycleResponse2(
      duration: map['duration'] as String,
      hoursInCycle: map['hoursInCycle'] as int,
      startTime: map['startTime'] as String,
    );
  }
}
