// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_counter_response.dart';

/// The metric counter set
class MetricCounterSetResponse {
  /// The counters that should be collected in this set.
  final pulumi.Input<List<MetricCounterResponse>> counters;

  /// Creates a new [MetricCounterSetResponse].
  /// [counters] The counters that should be collected in this set.
  MetricCounterSetResponse({
    required this.counters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counters': pulumi.Input.mapInputValue<List<MetricCounterResponse>, List<Map<String, dynamic>>>(counters, (value) => pulumi.Input.encodeList<MetricCounterResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetricCounterSetResponse.fromMap(Map<String, dynamic> map) {
    return MetricCounterSetResponse(
      counters: (pulumi.Input.decodeList<MetricCounterResponse>(map['counters'], (value) => MetricCounterResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

