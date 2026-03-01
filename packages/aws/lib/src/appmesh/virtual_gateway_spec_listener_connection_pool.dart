// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_listener_connection_pool_grpc.dart';
import 'virtual_gateway_spec_listener_connection_pool_http.dart';
import 'virtual_gateway_spec_listener_connection_pool_http2.dart';

class VirtualGatewaySpecListenerConnectionPool {
  /// Connection pool information for gRPC listeners.
  final VirtualGatewaySpecListenerConnectionPoolGrpc? grpc;

  /// Connection pool information for HTTP listeners.
  final VirtualGatewaySpecListenerConnectionPoolHttp? http;

  /// Connection pool information for HTTP2 listeners.
  final VirtualGatewaySpecListenerConnectionPoolHttp2? http2;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPool].
  /// [grpc] Connection pool information for gRPC listeners.
  /// [http] Connection pool information for HTTP listeners.
  /// [http2] Connection pool information for HTTP2 listeners.
  VirtualGatewaySpecListenerConnectionPool({this.grpc, this.http, this.http2});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': ?grpc == null ? null : grpc!.toMap(),
      'http': ?http == null ? null : http!.toMap(),
      'http2': ?http2 == null ? null : http2!.toMap(),
    };
  }

  factory VirtualGatewaySpecListenerConnectionPool.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecListenerConnectionPool(
      grpc: map['grpc'] == null
          ? null
          : VirtualGatewaySpecListenerConnectionPoolGrpc.fromMap(
              (map['grpc'] as Map).cast<String, dynamic>(),
            ),
      http: map['http'] == null
          ? null
          : VirtualGatewaySpecListenerConnectionPoolHttp.fromMap(
              (map['http'] as Map).cast<String, dynamic>(),
            ),
      http2: map['http2'] == null
          ? null
          : VirtualGatewaySpecListenerConnectionPoolHttp2.fromMap(
              (map['http2'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
