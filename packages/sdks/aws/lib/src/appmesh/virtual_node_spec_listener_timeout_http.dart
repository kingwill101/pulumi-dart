// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_http_idle.dart';
import 'virtual_node_spec_listener_timeout_http_per_request.dart';

class VirtualNodeSpecListenerTimeoutHttp {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.listener.timeout.tcp.idle` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttpIdle?>? idle;
  /// Per request timeout. See `spec.listener.timeout.http2.per_request` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttpPerRequest?>? perRequest;

  /// Creates a new [VirtualNodeSpecListenerTimeoutHttp].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.listener.timeout.tcp.idle` Block for details.
  /// [perRequest] Per request timeout. See `spec.listener.timeout.http2.per_request` Block for details.
  const VirtualNodeSpecListenerTimeoutHttp({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttpIdle, Map<String, dynamic>>(idle, (value) => value.toMap()),
      'perRequest': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttpPerRequest, Map<String, dynamic>>(perRequest, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeoutHttp.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp(
      idle: (() { final guardedValue = map['idle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutHttpIdle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perRequest: (() { final guardedValue = map['perRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutHttpPerRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
