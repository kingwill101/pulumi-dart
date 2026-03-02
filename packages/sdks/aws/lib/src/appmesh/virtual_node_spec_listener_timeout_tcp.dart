// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_tcp_idle.dart';

class VirtualNodeSpecListenerTimeoutTcp {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutTcpIdle>? idle;

  /// Creates a new [VirtualNodeSpecListenerTimeoutTcp].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  VirtualNodeSpecListenerTimeoutTcp({
    this.idle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutTcpIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeoutTcp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutTcp(
      idle: map['idle'] == null ? null : ((VirtualNodeSpecListenerTimeoutTcpIdle.fromMap((map['idle']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

