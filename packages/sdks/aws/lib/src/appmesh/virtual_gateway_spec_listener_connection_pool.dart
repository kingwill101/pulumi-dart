// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_connection_pool_grpc.dart';
import 'virtual_gateway_spec_listener_connection_pool_http.dart';
import 'virtual_gateway_spec_listener_connection_pool_http2.dart';

class VirtualGatewaySpecListenerConnectionPool {
  /// Connection pool information for gRPC listeners. See `grpc` Block for details.
  final pulumi.Input<VirtualGatewaySpecListenerConnectionPoolGrpc>? grpc;
  /// Connection pool information for HTTP listeners. See `http` Block for details.
  final pulumi.Input<VirtualGatewaySpecListenerConnectionPoolHttp>? http;
  /// Connection pool information for HTTP2 listeners. See `http2` Block for details.
  final pulumi.Input<VirtualGatewaySpecListenerConnectionPoolHttp2>? http2;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPool].
  /// [grpc] Connection pool information for gRPC listeners. See `grpc` Block for details.
  /// [http] Connection pool information for HTTP listeners. See `http` Block for details.
  /// [http2] Connection pool information for HTTP2 listeners. See `http2` Block for details.
  const VirtualGatewaySpecListenerConnectionPool({
    this.grpc,
    this.http,
    this.http2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpc': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerConnectionPoolGrpc, Map<String, dynamic>>(grpc, (value) => value.toMap()),
      'http': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerConnectionPoolHttp, Map<String, dynamic>>(http, (value) => value.toMap()),
      'http2': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerConnectionPoolHttp2, Map<String, dynamic>>(http2, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecListenerConnectionPool.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerConnectionPool(
      grpc: (() { final guardedValue = map['grpc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecListenerConnectionPoolGrpc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http: (() { final guardedValue = map['http']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecListenerConnectionPoolHttp.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      http2: (() { final guardedValue = map['http2']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualGatewaySpecListenerConnectionPoolHttp2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
