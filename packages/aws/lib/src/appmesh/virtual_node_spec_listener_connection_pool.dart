// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_connection_pool_grpc.dart';
import 'virtual_node_spec_listener_connection_pool_http.dart';
import 'virtual_node_spec_listener_connection_pool_http2.dart';
import 'virtual_node_spec_listener_connection_pool_tcp.dart';

class VirtualNodeSpecListenerConnectionPool {
  /// Connection pool information for gRPC listeners.
  final VirtualNodeSpecListenerConnectionPoolGrpc? grpc;

  /// Connection pool information for HTTP2 listeners.
  final List<VirtualNodeSpecListenerConnectionPoolHttp2>? http2s;

  /// Connection pool information for HTTP listeners.
  final List<VirtualNodeSpecListenerConnectionPoolHttp>? https;

  /// Connection pool information for TCP listeners.
  final List<VirtualNodeSpecListenerConnectionPoolTcp>? tcps;

  /// Creates a new [VirtualNodeSpecListenerConnectionPool].
  /// [grpc] Connection pool information for gRPC listeners.
  /// [http2s] Connection pool information for HTTP2 listeners.
  /// [https] Connection pool information for HTTP listeners.
  /// [tcps] Connection pool information for TCP listeners.
  VirtualNodeSpecListenerConnectionPool({
    this.grpc,
    this.http2s,
    this.https,
    this.tcps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'http2s': ?http2s == null
          ? null
          : pulumi.Input.encodeList<
              VirtualNodeSpecListenerConnectionPoolHttp2,
              Map<String, dynamic>
            >(http2s!, (value) => value.toMap()),
      'https': ?https == null
          ? null
          : pulumi.Input.encodeList<
              VirtualNodeSpecListenerConnectionPoolHttp,
              Map<String, dynamic>
            >(https!, (value) => value.toMap()),
      'tcps': ?tcps == null
          ? null
          : pulumi.Input.encodeList<
              VirtualNodeSpecListenerConnectionPoolTcp,
              Map<String, dynamic>
            >(tcps!, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerConnectionPool.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerConnectionPool(
      grpc: map['grpc'] == null
          ? null
          : VirtualNodeSpecListenerConnectionPoolGrpc.fromMap(
              (map['grpc'] as Map).cast<String, dynamic>(),
            ),
      http2s: map['http2s'] == null
          ? null
          : pulumi.Input.decodeList<VirtualNodeSpecListenerConnectionPoolHttp2>(
              map['http2s'],
              (value) => VirtualNodeSpecListenerConnectionPoolHttp2.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      https: map['https'] == null
          ? null
          : pulumi.Input.decodeList<VirtualNodeSpecListenerConnectionPoolHttp>(
              map['https'],
              (value) => VirtualNodeSpecListenerConnectionPoolHttp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      tcps: map['tcps'] == null
          ? null
          : pulumi.Input.decodeList<VirtualNodeSpecListenerConnectionPoolTcp>(
              map['tcps'],
              (value) => VirtualNodeSpecListenerConnectionPoolTcp.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
