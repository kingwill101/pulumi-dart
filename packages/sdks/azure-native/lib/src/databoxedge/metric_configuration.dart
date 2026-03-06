// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_counter_set.dart';

/// Metric configuration.
class MetricConfiguration {
  /// Host name for the IoT hub associated to the device.
  final pulumi.Input<List<MetricCounterSet>> counterSets;
  /// The MDM account to which the counters should be pushed.
  final pulumi.Input<String>? mdmAccount;
  /// The MDM namespace to which the counters should be pushed. This is required if MDMAccount is specified
  final pulumi.Input<String>? metricNameSpace;
  /// The Resource ID on which the metrics should be pushed.
  final pulumi.Input<String> resourceId;

  /// Creates a new [MetricConfiguration].
  /// [counterSets] Host name for the IoT hub associated to the device.
  /// [mdmAccount] The MDM account to which the counters should be pushed.
  /// [metricNameSpace] The MDM namespace to which the counters should be pushed. This is required if MDMAccount is specified
  /// [resourceId] The Resource ID on which the metrics should be pushed.
  const MetricConfiguration({
    required this.counterSets,
    this.mdmAccount,
    this.metricNameSpace,
    required this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterSets': pulumi.Input.mapInputValue<List<MetricCounterSet>, List<Map<String, dynamic>>>(counterSets, (value) => pulumi.Input.encodeList<MetricCounterSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mdmAccount': ?mdmAccount,
      'metricNameSpace': ?metricNameSpace,
      'resourceId': resourceId,
    };
  }

  factory MetricConfiguration.fromMap(Map<String, dynamic> map) {
    return MetricConfiguration(
      counterSets: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricCounterSet>(map['counterSets']!, (value) => MetricCounterSet.fromMap((value as Map).cast<String, dynamic>()))),
      mdmAccount: (() { final guardedValue = map['mdmAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricNameSpace: (() { final guardedValue = map['metricNameSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
    );
  }
}

