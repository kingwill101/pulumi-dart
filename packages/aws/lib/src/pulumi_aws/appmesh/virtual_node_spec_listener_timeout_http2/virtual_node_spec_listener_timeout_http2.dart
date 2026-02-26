// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_node_spec_listener_timeout_http2_idle/virtual_node_spec_listener_timeout_http2_idle.dart';
import '../virtual_node_spec_listener_timeout_http2_per_request/virtual_node_spec_listener_timeout_http2_per_request.dart';

class VirtualNodeSpecListenerTimeoutHttp2 {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final VirtualNodeSpecListenerTimeoutHttp2Idle? idle;

  /// Per request timeout.
  final VirtualNodeSpecListenerTimeoutHttp2PerRequest? perRequest;

  VirtualNodeSpecListenerTimeoutHttp2({
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

  factory VirtualNodeSpecListenerTimeoutHttp2.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp2(
      idle: map['idle'] == null
          ? null
          : VirtualNodeSpecListenerTimeoutHttp2Idle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>()),
      perRequest: map['perRequest'] == null
          ? null
          : VirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap(
              (map['perRequest'] as Map).cast<String, dynamic>()),
    );
  }
}
