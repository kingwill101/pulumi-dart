// ignore_for_file: unused_element, unnecessary_cast


class V3ProvisionConfigTargetTrackingPolicy {
  /// Policy expiration time
  final String? endTime;
  /// Maximum value of expansion
  final int? maxCapacity;
  /// Tracking value of the indicator
  final double? metricTarget;
  /// Provisionedconcurrency utilization: Concurrency utilization of reserved mode instances. CPU utilization: CPU utilization. GPUMemUtilization:GPU utilization
  final String? metricType;
  /// Minimum Shrinkage
  final int? minCapacity;
  /// Policy Name
  final String? name;
  /// Policy Effective Time
  final String? startTime;
  /// Time zone.
  final String? timeZone;

  /// Creates a new [V3ProvisionConfigTargetTrackingPolicy].
  /// [endTime] Policy expiration time
  /// [maxCapacity] Maximum value of expansion
  /// [metricTarget] Tracking value of the indicator
  /// [metricType] Provisionedconcurrency utilization: Concurrency utilization of reserved mode instances. CPU utilization: CPU utilization. GPUMemUtilization:GPU utilization
  /// [minCapacity] Minimum Shrinkage
  /// [name] Policy Name
  /// [startTime] Policy Effective Time
  /// [timeZone] Time zone.
  V3ProvisionConfigTargetTrackingPolicy({
    this.endTime,
    this.maxCapacity,
    this.metricTarget,
    this.metricType,
    this.minCapacity,
    this.name,
    this.startTime,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'maxCapacity': ?maxCapacity,
      'metricTarget': ?metricTarget,
      'metricType': ?metricType,
      'minCapacity': ?minCapacity,
      'name': ?name,
      'startTime': ?startTime,
      'timeZone': ?timeZone,
    };
  }

  factory V3ProvisionConfigTargetTrackingPolicy.fromMap(Map<String, dynamic> map) {
    return V3ProvisionConfigTargetTrackingPolicy(
      endTime: map['endTime'] == null ? null : map['endTime'] as String,
      maxCapacity: map['maxCapacity'] == null ? null : map['maxCapacity'] as int,
      metricTarget: map['metricTarget'] == null ? null : map['metricTarget'] as double,
      metricType: map['metricType'] == null ? null : map['metricType'] as String,
      minCapacity: map['minCapacity'] == null ? null : map['minCapacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      startTime: map['startTime'] == null ? null : map['startTime'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
    );
  }
}

