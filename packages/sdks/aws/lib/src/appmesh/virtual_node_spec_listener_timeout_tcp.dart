// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_tcp_idle.dart';

class VirtualNodeSpecListenerTimeoutTcp {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.listener.timeout.tcp.idle` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutTcpIdle>? idle;

  /// Creates a new [VirtualNodeSpecListenerTimeoutTcp].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.listener.timeout.tcp.idle` Block for details.
  const VirtualNodeSpecListenerTimeoutTcp({
    this.idle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutTcpIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeoutTcp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutTcp(
      idle: (() { final guardedValue = map['idle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutTcpIdle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
