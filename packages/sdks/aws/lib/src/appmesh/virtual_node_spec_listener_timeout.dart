// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_timeout_grpc.dart';
import 'virtual_node_spec_listener_timeout_http.dart';
import 'virtual_node_spec_listener_timeout_http2.dart';
import 'virtual_node_spec_listener_timeout_tcp.dart';

class VirtualNodeSpecListenerTimeout {
  /// Timeouts for gRPC listeners.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutGrpc>? grpc;
  /// Timeouts for HTTP listeners.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttp>? http;
  /// Timeouts for HTTP2 listeners.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutHttp2>? http2;
  /// Timeouts for TCP listeners.
  final pulumi.Input<VirtualNodeSpecListenerTimeoutTcp>? tcp;

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
      'grpc': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'http2': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutHttp2, Map<String, dynamic>>(http2, (value) => value.toMap()),
      'tcp': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTimeoutTcp, Map<String, dynamic>>(tcp, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTimeout.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTimeout(
      grpc: map['grpc'] == null ? null : ((VirtualNodeSpecListenerTimeoutGrpc.fromMap((map['grpc']! as Map).cast<String, dynamic>())).input()).input(),
      http: map['http'] == null ? null : ((VirtualNodeSpecListenerTimeoutHttp.fromMap((map['http']! as Map).cast<String, dynamic>())).input()).input(),
      http2: map['http2'] == null ? null : ((VirtualNodeSpecListenerTimeoutHttp2.fromMap((map['http2']! as Map).cast<String, dynamic>())).input()).input(),
      tcp: map['tcp'] == null ? null : ((VirtualNodeSpecListenerTimeoutTcp.fromMap((map['tcp']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

