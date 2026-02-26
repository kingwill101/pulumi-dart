// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'latency_percentile_response2.dart';

/// Describes measured latency distribution.
class LatencyDistributionResponse2 {
  /// Representative latency percentiles.
  final List<LatencyPercentileResponse2> latencyPercentiles;

  LatencyDistributionResponse2({
    required this.latencyPercentiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latencyPercentiles'] =
        Input.encodeList<LatencyPercentileResponse2, Map<String, dynamic>>(
            latencyPercentiles, (value) => value.toMap());
    return map;
  }

  factory LatencyDistributionResponse2.fromMap(Map<String, dynamic> map) {
    return LatencyDistributionResponse2(
      latencyPercentiles: Input.decodeList<LatencyPercentileResponse2>(
          map['latencyPercentiles'],
          (value) => LatencyPercentileResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
