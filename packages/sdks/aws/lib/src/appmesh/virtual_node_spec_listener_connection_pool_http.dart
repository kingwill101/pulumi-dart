// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerConnectionPoolHttp {
  /// Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  final pulumi.Input<int> maxConnections;
  /// Number of overflowing requests after `maxConnections` Envoy will queue to upstream cluster. Minimum value of `1`.
  final pulumi.Input<int>? maxPendingRequests;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolHttp].
  /// [maxConnections] Maximum number of outbound TCP connections Envoy can establish concurrently with all hosts in upstream cluster. Minimum value of `1`.
  /// [maxPendingRequests] Number of overflowing requests after `maxConnections` Envoy will queue to upstream cluster. Minimum value of `1`.
  const VirtualNodeSpecListenerConnectionPoolHttp({
    required this.maxConnections,
    this.maxPendingRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxConnections': maxConnections,
      'maxPendingRequests': ?maxPendingRequests,
    };
  }

  factory VirtualNodeSpecListenerConnectionPoolHttp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerConnectionPoolHttp(
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      maxPendingRequests: (() { final guardedValue = map['maxPendingRequests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
