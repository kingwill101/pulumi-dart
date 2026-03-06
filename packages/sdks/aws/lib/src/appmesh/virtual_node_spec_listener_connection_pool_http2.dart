// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecListenerConnectionPoolHttp2 {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  final pulumi.Input<int> maxRequests;

  /// Creates a new [VirtualNodeSpecListenerConnectionPoolHttp2].
  /// [maxRequests] Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster. Minimum value of `1`.
  const VirtualNodeSpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory VirtualNodeSpecListenerConnectionPoolHttp2.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerConnectionPoolHttp2(
      maxRequests: pulumi.Input.fromValue(map['maxRequests'] as int),
    );
  }
}

