// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_counter.dart';

/// The metric counter set
class MetricCounterSet {
  /// The counters that should be collected in this set.
  final pulumi.Input<List<MetricCounter>> counters;

  /// Creates a new [MetricCounterSet].
  /// [counters] The counters that should be collected in this set.
  const MetricCounterSet({
    required this.counters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counters': pulumi.Input.mapInputValue<List<MetricCounter>, List<Map<String, dynamic>>>(counters, (value) => pulumi.Input.encodeList<MetricCounter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricCounterSet.fromMap(Map<String, dynamic> map) {
    return MetricCounterSet(
      counters: pulumi.Input.fromValue(pulumi.Input.decodeList<MetricCounter>(map['counters']!, (value) => MetricCounter.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
