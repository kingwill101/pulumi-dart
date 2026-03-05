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
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

