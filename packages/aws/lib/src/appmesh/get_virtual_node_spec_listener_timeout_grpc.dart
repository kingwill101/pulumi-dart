// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_timeout_grpc_idle.dart';
import 'get_virtual_node_spec_listener_timeout_grpc_per_request.dart';

class GetVirtualNodeSpecListenerTimeoutGrpc {
  final List<GetVirtualNodeSpecListenerTimeoutGrpcIdle> idles;
  final List<GetVirtualNodeSpecListenerTimeoutGrpcPerRequest> perRequests;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutGrpc].
  /// [idles] Required.
  /// [perRequests] Required.
  GetVirtualNodeSpecListenerTimeoutGrpc({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idles'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutGrpcIdle,
        Map<String, dynamic>>(idles, (value) => value.toMap());
    map['perRequests'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutGrpcPerRequest,
        Map<String, dynamic>>(perRequests, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutGrpc.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutGrpc(
      idles: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutGrpcIdle>(
          map['idles'],
          (value) => GetVirtualNodeSpecListenerTimeoutGrpcIdle.fromMap(
              (value as Map).cast<String, dynamic>())),
      perRequests: pulumi.Input.decodeList<
              GetVirtualNodeSpecListenerTimeoutGrpcPerRequest>(
          map['perRequests'],
          (value) => GetVirtualNodeSpecListenerTimeoutGrpcPerRequest.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
