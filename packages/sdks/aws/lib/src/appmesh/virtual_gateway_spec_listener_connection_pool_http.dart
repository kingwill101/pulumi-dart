// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerConnectionPoolHttp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final pulumi.Input<int> maxConnections;
  /// Number of overflowing requests after `max_connections` Envoy will queue to upstream cluster. Minimum value of `1`.
  final pulumi.Input<int>? maxPendingRequests;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPoolHttp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  /// [maxPendingRequests] Number of overflowing requests after `max_connections` Envoy will queue to upstream cluster. Minimum value of `1`.
  VirtualGatewaySpecListenerConnectionPoolHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
    };
  }

  factory VirtualGatewaySpecListenerConnectionPoolHttp.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerConnectionPoolHttp(
      maxConnections: (map['maxConnections'] as int).input(),
      maxPendingRequests: map['maxPendingRequests'] == null ? null : (map['maxPendingRequests'] as int).input(),
    );
  }
}

