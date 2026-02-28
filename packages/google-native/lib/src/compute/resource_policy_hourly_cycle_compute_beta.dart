// ignore_for_file: unused_element, unnecessary_cast


/// Time window specified for hourly operations.
class ResourcePolicyHourlyCycleComputeBeta {
  /// Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  final int? hoursInCycle;
  /// Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  final String? startTime;

  /// Creates a new [ResourcePolicyHourlyCycleComputeBeta].
  /// [hoursInCycle] Defines a schedule with units measured in hours. The value determines how many hours pass between the start of each cycle.
  /// [startTime] Time within the window to start the operations. It must be in format "HH:MM", where HH : [00-23] and MM : [00-00] GMT.
  ResourcePolicyHourlyCycleComputeBeta({
    this.hoursInCycle,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hoursInCycle': ?hoursInCycle,
      'startTime': ?startTime,
    };
  }

  factory ResourcePolicyHourlyCycleComputeBeta.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyHourlyCycleComputeBeta(
      hoursInCycle: map['hoursInCycle'] == null ? null : map['hoursInCycle'] as int,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
    );
  }
}

