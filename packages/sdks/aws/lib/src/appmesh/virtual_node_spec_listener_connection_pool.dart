// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_connection_pool_grpc.dart';
import 'virtual_node_spec_listener_connection_pool_http.dart';
import 'virtual_node_spec_listener_connection_pool_http2.dart';
import 'virtual_node_spec_listener_connection_pool_tcp.dart';

class VirtualNodeSpecListenerConnectionPool {
  /// Connection pool information for gRPC listeners.
  final pulumi.Input<VirtualNodeSpecListenerConnectionPoolGrpc>? grpc;

  /// Connection pool information for HTTP2 listeners.
  final pulumi.Input<List<VirtualNodeSpecListenerConnectionPoolHttp2>>? http2s;

  /// Connection pool information for HTTP listeners.
  final pulumi.Input<List<VirtualNodeSpecListenerConnectionPoolHttp>>? https;

  /// Connection pool information for TCP listeners.
  final pulumi.Input<List<VirtualNodeSpecListenerConnectionPoolTcp>>? tcps;

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
      'grpc':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNodeSpecListenerConnectionPoolGrpc,
            Map<String, dynamic>
          >(grpc, (value) => value.toMap()),
      'http2s':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNodeSpecListenerConnectionPoolHttp2>,
            List<Map<String, dynamic>>
          >(
            http2s,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNodeSpecListenerConnectionPoolHttp2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'https':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNodeSpecListenerConnectionPoolHttp>,
            List<Map<String, dynamic>>
          >(
            https,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNodeSpecListenerConnectionPoolHttp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tcps':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualNodeSpecListenerConnectionPoolTcp>,
            List<Map<String, dynamic>>
          >(
            tcps,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualNodeSpecListenerConnectionPoolTcp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory VirtualNodeSpecListenerConnectionPool.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecListenerConnectionPool(
      grpc: (() {
        final guardedValue = map['grpc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNodeSpecListenerConnectionPoolGrpc.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      http2s: (() {
        final guardedValue = map['http2s'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNodeSpecListenerConnectionPoolHttp2>(
            guardedValue,
            (value) => VirtualNodeSpecListenerConnectionPoolHttp2.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      https: (() {
        final guardedValue = map['https'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNodeSpecListenerConnectionPoolHttp>(
            guardedValue,
            (value) => VirtualNodeSpecListenerConnectionPoolHttp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tcps: (() {
        final guardedValue = map['tcps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualNodeSpecListenerConnectionPoolTcp>(
            guardedValue,
            (value) => VirtualNodeSpecListenerConnectionPoolTcp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
