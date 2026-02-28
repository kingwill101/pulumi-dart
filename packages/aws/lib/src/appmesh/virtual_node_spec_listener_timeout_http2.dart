// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_timeout_http2_idle.dart';
import 'virtual_node_spec_listener_timeout_http2_per_request.dart';

class VirtualNodeSpecListenerTimeoutHttp2 {
  /// Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  final VirtualNodeSpecListenerTimeoutHttp2Idle? idle;
  /// Per request timeout.
  final VirtualNodeSpecListenerTimeoutHttp2PerRequest? perRequest;

  /// Creates a new [VirtualNodeSpecListenerTimeoutHttp2].
  /// [idle] Idle timeout. An idle timeout bounds the amount of time that a connection may be idle.
  /// [perRequest] Per request timeout.
  VirtualNodeSpecListenerTimeoutHttp2({
    this.idle,
    this.perRequest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idle': ?idle == null ? null : idle!.toMap(),
      'perRequest': ?perRequest == null ? null : perRequest!.toMap(),
    };
  }

  factory VirtualNodeSpecListenerTimeoutHttp2.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeoutHttp2(
      idle: map['idle'] == null ? null : VirtualNodeSpecListenerTimeoutHttp2Idle.fromMap((map['idle'] as Map).cast<String, dynamic>()),
      perRequest: map['perRequest'] == null ? null : VirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap((map['perRequest'] as Map).cast<String, dynamic>()),
    );
  }
}

