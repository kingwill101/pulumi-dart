// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerConnectionPoolGrpc {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  final pulumi.Input<int> maxRequests;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPoolGrpc].
  /// [maxRequests] Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  VirtualGatewaySpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory VirtualGatewaySpecListenerConnectionPoolGrpc.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerConnectionPoolGrpc(
      maxRequests: pulumi.Input.fromValue(map['maxRequests'] as int),
    );
  }
}

