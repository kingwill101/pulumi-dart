// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../virtual_node_spec_listener_connection_pool_grpc/virtual_node_spec_listener_connection_pool_grpc.dart';
import '../virtual_node_spec_listener_connection_pool_http/virtual_node_spec_listener_connection_pool_http.dart';
import '../virtual_node_spec_listener_connection_pool_http2/virtual_node_spec_listener_connection_pool_http2.dart';
import '../virtual_node_spec_listener_connection_pool_tcp/virtual_node_spec_listener_connection_pool_tcp.dart';

class VirtualNodeSpecListenerConnectionPool {
  /// Connection pool information for gRPC listeners.
  final VirtualNodeSpecListenerConnectionPoolGrpc? grpc;

  /// Connection pool information for HTTP2 listeners.
  final List<VirtualNodeSpecListenerConnectionPoolHttp2>? http2s;

  /// Connection pool information for HTTP listeners.
  final List<VirtualNodeSpecListenerConnectionPoolHttp>? https;

  /// Connection pool information for TCP listeners.
  final List<VirtualNodeSpecListenerConnectionPoolTcp>? tcps;

  VirtualNodeSpecListenerConnectionPool({
    this.grpc,
    this.http2s,
    this.https,
    this.tcps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final grpcValue = grpc;
    if (grpcValue != null) {
      map['grpc'] = grpcValue.toMap();
    }
    final http2sValue = http2s;
    if (http2sValue != null) {
      map['http2s'] = Input.encodeList<
          VirtualNodeSpecListenerConnectionPoolHttp2,
          Map<String, dynamic>>(http2sValue, (value) => value.toMap());
    }
    final httpsValue = https;
    if (httpsValue != null) {
      map['https'] = Input.encodeList<VirtualNodeSpecListenerConnectionPoolHttp,
          Map<String, dynamic>>(httpsValue, (value) => value.toMap());
    }
    final tcpsValue = tcps;
    if (tcpsValue != null) {
      map['tcps'] = Input.encodeList<VirtualNodeSpecListenerConnectionPoolTcp,
          Map<String, dynamic>>(tcpsValue, (value) => value.toMap());
    }
    return map;
  }

  factory VirtualNodeSpecListenerConnectionPool.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecListenerConnectionPool(
      grpc: map['grpc'] == null
          ? null
          : VirtualNodeSpecListenerConnectionPoolGrpc.fromMap(
              (map['grpc'] as Map).cast<String, dynamic>()),
      http2s: map['http2s'] == null
          ? null
          : Input.decodeList<VirtualNodeSpecListenerConnectionPoolHttp2>(
              map['http2s'],
              (value) => VirtualNodeSpecListenerConnectionPoolHttp2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      https: map['https'] == null
          ? null
          : Input.decodeList<VirtualNodeSpecListenerConnectionPoolHttp>(
              map['https'],
              (value) => VirtualNodeSpecListenerConnectionPoolHttp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tcps: map['tcps'] == null
          ? null
          : Input.decodeList<VirtualNodeSpecListenerConnectionPoolTcp>(
              map['tcps'],
              (value) => VirtualNodeSpecListenerConnectionPoolTcp.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
