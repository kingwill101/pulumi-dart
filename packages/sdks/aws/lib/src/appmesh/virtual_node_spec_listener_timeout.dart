// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_timeout_grpc.dart';
import 'virtual_node_spec_listener_timeout_http.dart';
import 'virtual_node_spec_listener_timeout_http2.dart';
import 'virtual_node_spec_listener_timeout_tcp.dart';

class VirtualNodeSpecListenerTimeout {
  /// Timeouts for gRPC listeners.
  final VirtualNodeSpecListenerTimeoutGrpc? grpc;
  /// Timeouts for HTTP listeners.
  final VirtualNodeSpecListenerTimeoutHttp? http;
  /// Timeouts for HTTP2 listeners.
  final VirtualNodeSpecListenerTimeoutHttp2? http2;
  /// Timeouts for TCP listeners.
  final VirtualNodeSpecListenerTimeoutTcp? tcp;

  /// Creates a new [VirtualNodeSpecListenerTimeout].
  /// [grpc] Timeouts for gRPC listeners.
  /// [http] Timeouts for HTTP listeners.
  /// [http2] Timeouts for HTTP2 listeners.
  /// [tcp] Timeouts for TCP listeners.
  VirtualNodeSpecListenerTimeout({
    this.grpc,
    this.http,
    this.http2,
    this.tcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'http': ?http == null ? null : http!.toMap(),
      'http2': ?http2 == null ? null : http2!.toMap(),
      'tcp': ?tcp == null ? null : tcp!.toMap(),
    };
  }

  factory VirtualNodeSpecListenerTimeout.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeout(
      grpc: map['grpc'] == null ? null : VirtualNodeSpecListenerTimeoutGrpc.fromMap((map['grpc'] as Map).cast<String, dynamic>()),
      http: map['http'] == null ? null : VirtualNodeSpecListenerTimeoutHttp.fromMap((map['http'] as Map).cast<String, dynamic>()),
      http2: map['http2'] == null ? null : VirtualNodeSpecListenerTimeoutHttp2.fromMap((map['http2'] as Map).cast<String, dynamic>()),
      tcp: map['tcp'] == null ? null : VirtualNodeSpecListenerTimeoutTcp.fromMap((map['tcp'] as Map).cast<String, dynamic>()),
    );
  }
}

