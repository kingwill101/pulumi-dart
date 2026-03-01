// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterEndpoint {
  /// Cluster endpoint.
  final String? endpoint;

  /// Region of the endpoint.
  final String? region;

  /// Creates a new [ClusterClusterEndpoint].
  /// [endpoint] Cluster endpoint.
  /// [region] Region of the endpoint.
  ClusterClusterEndpoint({this.endpoint, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endpoint': ?endpoint, 'region': ?region};
  }

  factory ClusterClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return ClusterClusterEndpoint(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
