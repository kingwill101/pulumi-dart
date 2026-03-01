// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_connection_pool_grpc.dart';
import 'get_virtual_gateway_spec_listener_connection_pool_http.dart';
import 'get_virtual_gateway_spec_listener_connection_pool_http2.dart';

class GetVirtualGatewaySpecListenerConnectionPool {
  final List<GetVirtualGatewaySpecListenerConnectionPoolGrpc> grpcs;
  final List<GetVirtualGatewaySpecListenerConnectionPoolHttp2> http2s;
  final List<GetVirtualGatewaySpecListenerConnectionPoolHttp> https;

  /// Creates a new [GetVirtualGatewaySpecListenerConnectionPool].
  /// [grpcs] Required.
  /// [http2s] Required.
  /// [https] Required.
  GetVirtualGatewaySpecListenerConnectionPool({
    required this.grpcs,
    required this.http2s,
    required this.https,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcs': pulumi.Input.encodeList<GetVirtualGatewaySpecListenerConnectionPoolGrpc, Map<String, dynamic>>(grpcs, (value) => value.toMap()),
      'http2s': pulumi.Input.encodeList<GetVirtualGatewaySpecListenerConnectionPoolHttp2, Map<String, dynamic>>(http2s, (value) => value.toMap()),
      'https': pulumi.Input.encodeList<GetVirtualGatewaySpecListenerConnectionPoolHttp, Map<String, dynamic>>(https, (value) => value.toMap()),
    };
  }

  factory GetVirtualGatewaySpecListenerConnectionPool.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerConnectionPool(
      grpcs: pulumi.Input.decodeList<GetVirtualGatewaySpecListenerConnectionPoolGrpc>(map['grpcs'], (value) => GetVirtualGatewaySpecListenerConnectionPoolGrpc.fromMap((value as Map).cast<String, dynamic>())),
      http2s: pulumi.Input.decodeList<GetVirtualGatewaySpecListenerConnectionPoolHttp2>(map['http2s'], (value) => GetVirtualGatewaySpecListenerConnectionPoolHttp2.fromMap((value as Map).cast<String, dynamic>())),
      https: pulumi.Input.decodeList<GetVirtualGatewaySpecListenerConnectionPoolHttp>(map['https'], (value) => GetVirtualGatewaySpecListenerConnectionPoolHttp.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

