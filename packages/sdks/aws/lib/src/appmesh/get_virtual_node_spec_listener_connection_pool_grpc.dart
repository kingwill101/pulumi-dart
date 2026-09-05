// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecListenerConnectionPoolGrpc {
  /// Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster.
  final pulumi.Input<int> maxRequests;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPoolGrpc].
  /// [maxRequests] Maximum number of inflight requests Envoy can concurrently support across hosts in upstream cluster.
  const GetVirtualNodeSpecListenerConnectionPoolGrpc({
    required this.maxRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxRequests': maxRequests,
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPoolGrpc.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPoolGrpc(
      maxRequests: pulumi.Input.fromValue((map['maxRequests'] as num).toInt()),
    );
  }
}
