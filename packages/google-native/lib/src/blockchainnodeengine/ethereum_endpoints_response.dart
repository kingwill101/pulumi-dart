// ignore_for_file: unused_element, unnecessary_cast

/// Contains endpoint information specific to Ethereum nodes.
class EthereumEndpointsResponse {
  /// The assigned URL for the node's Beacon API endpoint.
  final String beaconApiEndpoint;

  /// The assigned URL for the node's Beacon Prometheus metrics endpoint. See [Prometheus Metrics](https://lighthouse-book.sigmaprime.io/advanced_metrics.html) for more details.
  final String beaconPrometheusMetricsApiEndpoint;

  /// The assigned URL for the node's execution client's Prometheus metrics endpoint.
  final String executionClientPrometheusMetricsApiEndpoint;

  /// Creates a new [EthereumEndpointsResponse].
  /// [beaconApiEndpoint] The assigned URL for the node's Beacon API endpoint.
  /// [beaconPrometheusMetricsApiEndpoint] The assigned URL for the node's Beacon Prometheus metrics endpoint. See [Prometheus Metrics](https://lighthouse-book.sigmaprime.io/advanced_metrics.html) for more details.
  /// [executionClientPrometheusMetricsApiEndpoint] The assigned URL for the node's execution client's Prometheus metrics endpoint.
  EthereumEndpointsResponse({
    required this.beaconApiEndpoint,
    required this.beaconPrometheusMetricsApiEndpoint,
    required this.executionClientPrometheusMetricsApiEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'beaconApiEndpoint': beaconApiEndpoint,
      'beaconPrometheusMetricsApiEndpoint': beaconPrometheusMetricsApiEndpoint,
      'executionClientPrometheusMetricsApiEndpoint':
          executionClientPrometheusMetricsApiEndpoint,
    };
  }

  factory EthereumEndpointsResponse.fromMap(Map<String, dynamic> map) {
    return EthereumEndpointsResponse(
      beaconApiEndpoint: map['beaconApiEndpoint'] as String,
      beaconPrometheusMetricsApiEndpoint:
          map['beaconPrometheusMetricsApiEndpoint'] as String,
      executionClientPrometheusMetricsApiEndpoint:
          map['executionClientPrometheusMetricsApiEndpoint'] as String,
    );
  }
}
