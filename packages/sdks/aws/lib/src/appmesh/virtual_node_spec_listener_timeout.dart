// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_grpc.dart';
import 'virtual_node_spec_listener_timeout_http.dart';
import 'virtual_node_spec_listener_timeout_http2.dart';
import 'virtual_node_spec_listener_timeout_tcp.dart';

class VirtualNodeSpecListenerTimeout {
  /// Timeouts for gRPC listeners. See `spec.listener.timeout.grpc` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutGrpc?>? grpc;
  /// Timeouts for HTTP listeners. See `spec.listener.timeout.http` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttp?>? http;
  /// Timeouts for HTTP2 listeners. See `spec.listener.timeout.http2` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttp2?>? http2;
  /// Timeouts for TCP listeners. See `spec.listener.timeout.tcp` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutTcp?>? tcp;

  /// Creates a new [VirtualNodeSpecListenerTimeout].
  /// [grpc] Timeouts for gRPC listeners. See `spec.listener.timeout.grpc` Block for details.
  /// [http] Timeouts for HTTP listeners. See `spec.listener.timeout.http` Block for details.
  /// [http2] Timeouts for HTTP2 listeners. See `spec.listener.timeout.http2` Block for details.
  /// [tcp] Timeouts for TCP listeners. See `spec.listener.timeout.tcp` Block for details.
  const VirtualNodeSpecListenerTimeout({
    this.grpc,
    this.http,
    this.http2,
    this.tcp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'http2': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttp2, Map<String, dynamic>>(http2, (value) => value.toMap()),
      'tcp': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeout.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeout(
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http2: (() { final guardedValue = map['http2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutHttp2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTimeoutTcp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
