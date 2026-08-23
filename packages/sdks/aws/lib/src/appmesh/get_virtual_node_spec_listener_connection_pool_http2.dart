// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolHttp2 {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster.
  final pulumi.Input<int> maxRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolHttp2].
  /// [maxRequests] Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster.
  const GetVirtualNodeSpecListenerConnectionPoolHttp2({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolHttp2.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolHttp2(
      maxRequests: pulumi.Input.fromValue(map['maxRequests'] as int),
    );
  }
}
