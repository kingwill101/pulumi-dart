// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'latency_percentile_response.dart';

/// Describes measured latency distribution.
class LatencyDistributionResponse {
  /// Representative latency percentiles.
  final List<LatencyPercentileResponse> latencyPercentiles;

  /// Creates a new [LatencyDistributionResponse].
  /// [latencyPercentiles] Representative latency percentiles.
  LatencyDistributionResponse({
    required this.latencyPercentiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latencyPercentiles': pulumi.Input.encodeList<LatencyPercentileResponse, Map<String, dynamic>>(latencyPercentiles, (value) => value.toMap()),
    };
  }

  factory LatencyDistributionResponse.fromMap(Map<String, dynamic> map) {
    return LatencyDistributionResponse(
      latencyPercentiles: pulumi.Input.decodeList<LatencyPercentileResponse>(map['latencyPercentiles'], (value) => LatencyPercentileResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

