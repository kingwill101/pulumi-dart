// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_http2_idle.dart';
import 'virtual_node_spec_listener_timeout_http2_per_request.dart';

class VirtualNodeSpecListenerTimeoutHttp2 {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.listener.timeout.tcp.idle` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttp2Idle?>? idle;
  /// Per request timeout. See `spec.listener.timeout.http2.per_request` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttp2PerRequest?>? perRequest;

  /// Creates a new [VirtualNodeSpecListenerTimeoutHttp2].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle. See `spec.listener.timeout.tcp.idle` Block for details.
  /// [perRequest] Per request timeout. See `spec.listener.timeout.http2.per_request` Block for details.
  const VirtualNodeSpecListenerTimeoutHttp2({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttp2Idle, Map<String, dynamic>>(idle, (value) => value.toMap()),
      'perRequest': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttp2PerRequest, Map<String, dynamic>>(perRequest, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeoutHttp2.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp2(
      idle: (() { final guardedValue = map['idle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutHttp2Idle.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perRequest: (() { final guardedValue = map['perRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
