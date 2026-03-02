// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_grpc_idle.dart';
import 'virtual_node_spec_listener_timeout_grpc_per_request.dart';

class VirtualNodeSpecListenerTimeoutGrpc {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutGrpcIdle>? idle;
  /// Per request timeout.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutGrpcPerRequest>? perRequest;

  /// Creates a new [VirtualNodeSpecListenerTimeoutGrpc].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  VirtualNodeSpecListenerTimeoutGrpc({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutGrpcIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
      'perRequest': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutGrpcPerRequest, Map<String, dynamic>>(perRequest, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeoutGrpc.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutGrpc(
      idle: map['idle'] == null ? null : ((VirtualNodeSpecListenerTimeoutGrpcIdle.fromMap((map['idle']! as Map).cast<String, dynamic>())).input()).input(),
      perRequest: map['perRequest'] == null ? null : ((VirtualNodeSpecListenerTimeoutGrpcPerRequest.fromMap((map['perRequest']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

