// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for dependent entities, i.e. child entities
class DependenciesSignalGroup {
  /// Aggregation type for child dependencies.
  final pulumi.Input<dynamic> aggregationType;
  /// Degraded threshold for aggregating the propagated health state of child dependencies. Can be either an absolute number that is greater than 0, or a percentage between 1-100%. The entity will be considered degraded when the number of not healthy child dependents (unhealthy, degraded, unknown) is equal to or above the threshold value. Must only be set when AggregationType is 'Thresholds'.
  final pulumi.Input<String?>? degradedThreshold;
  /// Unhealthy threshold for aggregating the propagated health state of child dependencies. Can be either an absolute number that is greater than 0, or a percentage between 1-100%. The entity will be considered unhealthy when the number of not healthy child dependents (unhealthy, degraded, unknown) is equal to or above the threshold value. Must only be set when AggregationType is 'Thresholds'.
  final pulumi.Input<String?>? unhealthyThreshold;

  /// Creates a new [DependenciesSignalGroup].
  /// [aggregationType] Aggregation type for child dependencies.
  /// [degradedThreshold] Degraded threshold for aggregating the propagated health state of child dependencies. Can be either an absolute number that is greater than 0, or a percentage between 1-100%. The entity will be considered degraded when the number of not healthy child dependents (unhealthy, degraded, unknown) is equal to or above the threshold value. Must only be set when AggregationType is 'Thresholds'.
  /// [unhealthyThreshold] Unhealthy threshold for aggregating the propagated health state of child dependencies. Can be either an absolute number that is greater than 0, or a percentage between 1-100%. The entity will be considered unhealthy when the number of not healthy child dependents (unhealthy, degraded, unknown) is equal to or above the threshold value. Must only be set when AggregationType is 'Thresholds'.
  DependenciesSignalGroup({
    pulumi.Input<dynamic>? aggregationType,
    this.degradedThreshold,
    this.unhealthyThreshold,
  }) : aggregationType = aggregationType ?? pulumi.Input.fromValue('WorstOf');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationType': aggregationType,
      'degradedThreshold': ?degradedThreshold,
      'unhealthyThreshold': ?unhealthyThreshold,
    };
  }

  factory DependenciesSignalGroup.fromMap(Map<String, dynamic> map) {
    return DependenciesSignalGroup(
      aggregationType: pulumi.Input.fromValue(map['aggregationType']),
      degradedThreshold: (() { final guardedValue = map['degradedThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unhealthyThreshold: (() { final guardedValue = map['unhealthyThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
