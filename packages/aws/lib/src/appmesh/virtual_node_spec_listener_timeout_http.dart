// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_timeout_http_idle.dart';
import 'virtual_node_spec_listener_timeout_http_per_request.dart';

class VirtualNodeSpecListenerTimeoutHttp {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final VirtualNodeSpecListenerTimeoutHttpIdle? idle;

  /// Per request timeout.
  final VirtualNodeSpecListenerTimeoutHttpPerRequest? perRequest;

  /// Creates a new [VirtualNodeSpecListenerTimeoutHttp].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  VirtualNodeSpecListenerTimeoutHttp({
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

  factory VirtualNodeSpecListenerTimeoutHttp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp(
      idle: map['idle'] == null
          ? null
          : VirtualNodeSpecListenerTimeoutHttpIdle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>()),
      perRequest: map['perRequest'] == null
          ? null
          : VirtualNodeSpecListenerTimeoutHttpPerRequest.fromMap(
              (map['perRequest'] as Map).cast<String, dynamic>()),
    );
  }
}
