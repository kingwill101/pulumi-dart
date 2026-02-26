// ignore_for_file: unused_element, unnecessary_cast

class BlockchainNodesEthereumDetailsAdditionalEndpoint {
  /// The assigned URL for the node's Beacon API endpoint.
  final String? beaconApiEndpoint;

  /// The assigned URL for the node's Beacon Prometheus metrics endpoint.
  final String? beaconPrometheusMetricsApiEndpoint;

  /// The assigned URL for the node's execution client's Prometheus metrics endpoint.
  final String? executionClientPrometheusMetricsApiEndpoint;

  BlockchainNodesEthereumDetailsAdditionalEndpoint({
    this.beaconApiEndpoint,
    this.beaconPrometheusMetricsApiEndpoint,
    this.executionClientPrometheusMetricsApiEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final beaconApiEndpointValue = beaconApiEndpoint;
    if (beaconApiEndpointValue != null) {
      map['beaconApiEndpoint'] = beaconApiEndpointValue;
    }
    final beaconPrometheusMetricsApiEndpointValue =
        beaconPrometheusMetricsApiEndpoint;
    if (beaconPrometheusMetricsApiEndpointValue != null) {
      map['beaconPrometheusMetricsApiEndpoint'] =
          beaconPrometheusMetricsApiEndpointValue;
    }
    final executionClientPrometheusMetricsApiEndpointValue =
        executionClientPrometheusMetricsApiEndpoint;
    if (executionClientPrometheusMetricsApiEndpointValue != null) {
      map['executionClientPrometheusMetricsApiEndpoint'] =
          executionClientPrometheusMetricsApiEndpointValue;
    }
    return map;
  }

  factory BlockchainNodesEthereumDetailsAdditionalEndpoint.fromMap(
      Map<String, dynamic> map) {
    return BlockchainNodesEthereumDetailsAdditionalEndpoint(
      beaconApiEndpoint: map['beaconApiEndpoint'] == null
          ? null
          : map['beaconApiEndpoint'] as String,
      beaconPrometheusMetricsApiEndpoint:
          map['beaconPrometheusMetricsApiEndpoint'] == null
              ? null
              : map['beaconPrometheusMetricsApiEndpoint'] as String,
      executionClientPrometheusMetricsApiEndpoint:
          map['executionClientPrometheusMetricsApiEndpoint'] == null
              ? null
              : map['executionClientPrometheusMetricsApiEndpoint'] as String,
    );
  }
}
