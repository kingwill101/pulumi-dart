// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_timeout_grpc_idle.dart';
import 'virtual_node_spec_listener_timeout_grpc_per_request.dart';

class VirtualNodeSpecListenerTimeoutGrpc {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final VirtualNodeSpecListenerTimeoutGrpcIdle? idle;

  /// Per request timeout.
  final VirtualNodeSpecListenerTimeoutGrpcPerRequest? perRequest;

  /// Creates a new [VirtualNodeSpecListenerTimeoutGrpc].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  VirtualNodeSpecListenerTimeoutGrpc({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleValue = idle;
    if (idleValue != null) {
      map['idle'] = idleValue.toMap();
    }
    final perRequestValue = perRequest;
    if (perRequestValue != null) {
      map['perRequest'] = perRequestValue.toMap();
    }
    return map;
  }

  factory VirtualNodeSpecListenerTimeoutGrpc.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutGrpc(
      idle: map['idle'] == null
          ? null
          : VirtualNodeSpecListenerTimeoutGrpcIdle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>()),
      perRequest: map['perRequest'] == null
          ? null
          : VirtualNodeSpecListenerTimeoutGrpcPerRequest.fromMap(
              (map['perRequest'] as Map).cast<String, dynamic>()),
    );
  }
}
