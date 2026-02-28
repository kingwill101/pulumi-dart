// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_timeout_tcp_idle.dart';

class VirtualNodeSpecListenerTimeoutTcp {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final VirtualNodeSpecListenerTimeoutTcpIdle? idle;

  /// Creates a new [VirtualNodeSpecListenerTimeoutTcp].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  VirtualNodeSpecListenerTimeoutTcp({
    this.idle,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final idleValue = idle;
    if (idleValue != null) {
      map['idle'] = idleValue.toMap();
    }
    return map;
  }

  factory VirtualNodeSpecListenerTimeoutTcp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutTcp(
      idle: map['idle'] == null
          ? null
          : VirtualNodeSpecListenerTimeoutTcpIdle.fromMap(
              (map['idle'] as Map).cast<String, dynamic>()),
    );
  }
}
