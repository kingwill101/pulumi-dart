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
  const V3ProvisionConfigTargetTrackingPolicy({
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
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxCapacity: (() { final guardedValue = map['maxCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      metricTarget: (() { final guardedValue = map['metricTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      metricType: (() { final guardedValue = map['metricType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minCapacity: (() { final guardedValue = map['minCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

