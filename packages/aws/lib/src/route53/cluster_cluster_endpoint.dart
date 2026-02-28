// ignore_for_file: unused_element, unnecessary_cast

class ClusterClusterEndpoint {
  /// Cluster endpoint.
  final String? endpoint;

  /// Region of the endpoint.
  final String? region;

  /// Creates a new [ClusterClusterEndpoint].
  /// [endpoint] Cluster endpoint.
  /// [region] Region of the endpoint.
  ClusterClusterEndpoint({
    this.endpoint,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final endpointValue = endpoint;
    if (endpointValue != null) {
      map['endpoint'] = endpointValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory ClusterClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return ClusterClusterEndpoint(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
