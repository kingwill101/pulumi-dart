// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_timeout_grpc_idle.dart';
import 'get_virtual_node_spec_listener_timeout_grpc_per_request.dart';

class GetVirtualNodeSpecListenerTimeoutGrpc {
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutGrpcIdle>> idles;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutGrpcPerRequest>> perRequests;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutGrpc].
  /// [idles] Required.
  /// [perRequests] Required.
  const GetVirtualNodeSpecListenerTimeoutGrpc({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutGrpcIdle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutGrpcIdle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'perRequests': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutGrpcPerRequest>, List<Map<String, dynamic>>>(perRequests, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutGrpcPerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutGrpc.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutGrpc(
      idles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutGrpcIdle>(map['idles']!, (value) => GetVirtualNodeSpecListenerTimeoutGrpcIdle.fromMap((value as Map).cast<String, dynamic>()))),
      perRequests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutGrpcPerRequest>(map['perRequests']!, (value) => GetVirtualNodeSpecListenerTimeoutGrpcPerRequest.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

