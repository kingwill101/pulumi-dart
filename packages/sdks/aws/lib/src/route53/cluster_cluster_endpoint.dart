// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterEndpoint {
  /// Cluster endpoint.
  final pulumi.Input<String>? endpoint;
  /// Region of the endpoint.
  final pulumi.Input<String>? region;

  /// Creates a new [ClusterClusterEndpoint].
  /// [endpoint] Cluster endpoint.
  /// [region] Region of the endpoint.
  ClusterClusterEndpoint({
    this.endpoint,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'region': ?region,
    };
  }

  factory ClusterClusterEndpoint.fromMap(Map<String, dynamic> map) {
    return ClusterClusterEndpoint(
      endpoint: map['endpoint'] == null ? null : ((map['endpoint'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

