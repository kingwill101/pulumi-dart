// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3ProvisionConfigTargetTrackingPolicy {
  /// Policy expiration time
  final pulumi.Input<String>? endTime;
  /// Maximum value of expansion
  final pulumi.Input<int>? maxCapacity;
  /// Tracking value of the indicator
  final pulumi.Input<double>? metricTarget;
  /// Provisionedconcurrency utilization: Concurrency utilization of reserved mode instances. CPU utilization: CPU utilization. GPUMemUtilization:GPU utilization
  final pulumi.Input<String>? metricType;
  /// Minimum Shrinkage
  final pulumi.Input<int>? minCapacity;
  /// Policy Name
  final pulumi.Input<String>? name;
  /// Policy Effective Time
  final pulumi.Input<String>? startTime;
  /// Time zone.
  final pulumi.Input<String>? timeZone;

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
      endTime: map['endTime'] == null ? null : (map['endTime']! as String).input(),
      maxCapacity: map['maxCapacity'] == null ? null : (map['maxCapacity']! as int).input(),
      metricTarget: map['metricTarget'] == null ? null : (map['metricTarget']! as double).input(),
      metricType: map['metricType'] == null ? null : (map['metricType']! as String).input(),
      minCapacity: map['minCapacity'] == null ? null : (map['minCapacity']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime']! as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone']! as String).input(),
    );
  }
}

