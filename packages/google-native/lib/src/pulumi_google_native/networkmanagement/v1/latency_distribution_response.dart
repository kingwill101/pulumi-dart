// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'latency_percentile_response.dart';

/// Describes measured latency distribution.
class LatencyDistributionResponse {
  /// Representative latency percentiles.
  final List<LatencyPercentileResponse> latencyPercentiles;

  LatencyDistributionResponse({
    required this.latencyPercentiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latencyPercentiles'] =
        Input.encodeList<LatencyPercentileResponse, Map<String, dynamic>>(
            latencyPercentiles, (value) => value.toMap());
    return map;
  }

  factory LatencyDistributionResponse.fromMap(Map<String, dynamic> map) {
    return LatencyDistributionResponse(
      latencyPercentiles: Input.decodeList<LatencyPercentileResponse>(
          map['latencyPercentiles'],
          (value) => LatencyPercentileResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
