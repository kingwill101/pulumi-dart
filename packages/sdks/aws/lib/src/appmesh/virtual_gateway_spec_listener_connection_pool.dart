// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_connection_pool_grpc.dart';
import 'virtual_gateway_spec_listener_connection_pool_http.dart';
import 'virtual_gateway_spec_listener_connection_pool_http2.dart';

class VirtualGatewaySpecListenerConnectionPool {
  /// Connection pool information for gRPC listeners.
  final pulumi.Input<VirtualGatewaySpecListenerConnectionPoolGrpc>? grpc;
  /// Connection pool information for HTTP listeners.
  final pulumi.Input<VirtualGatewaySpecListenerConnectionPoolHttp>? http;
  /// Connection pool information for HTTP2 listeners.
  final pulumi.Input<VirtualGatewaySpecListenerConnectionPoolHttp2>? http2;

  /// Creates a new [VirtualGatewaySpecListenerConnectionPool].
  /// [grpc] Connection pool information for gRPC listeners.
  /// [http] Connection pool information for HTTP listeners.
  /// [http2] Connection pool information for HTTP2 listeners.
  VirtualGatewaySpecListenerConnectionPool({
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
      grpc: map['grpc'] == null ? null : ((VirtualGatewaySpecListenerConnectionPoolGrpc.fromMap((map['grpc']! as Map).cast<String, dynamic>())).input()).input(),
      http: map['http'] == null ? null : ((VirtualGatewaySpecListenerConnectionPoolHttp.fromMap((map['http']! as Map).cast<String, dynamic>())).input()).input(),
      http2: map['http2'] == null ? null : ((VirtualGatewaySpecListenerConnectionPoolHttp2.fromMap((map['http2']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

