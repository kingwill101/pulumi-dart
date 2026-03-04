// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_connection_pool_grpc.dart';
import 'get_virtual_gateway_spec_listener_connection_pool_http.dart';
import 'get_virtual_gateway_spec_listener_connection_pool_http2.dart';

class GetVirtualGatewaySpecListenerConnectionPool {
  final pulumi.Input<List<GetVirtualGatewaySpecListenerConnectionPoolGrpc>>
  grpcs;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerConnectionPoolHttp2>>
  http2s;
  final pulumi.Input<List<GetVirtualGatewaySpecListenerConnectionPoolHttp>>
  https;

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
      'grpcs':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerConnectionPoolGrpc>,
            List<Map<String, dynamic>>
          >(
            grpcs,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerConnectionPoolGrpc,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'http2s':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerConnectionPoolHttp2>,
            List<Map<String, dynamic>>
          >(
            http2s,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerConnectionPoolHttp2,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'https':
          pulumi.Input.mapInputValue<
            List<GetVirtualGatewaySpecListenerConnectionPoolHttp>,
            List<Map<String, dynamic>>
          >(
            https,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualGatewaySpecListenerConnectionPoolHttp,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualGatewaySpecListenerConnectionPool.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualGatewaySpecListenerConnectionPool(
      grpcs: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetVirtualGatewaySpecListenerConnectionPoolGrpc>(
          map['grpcs']!,
          (value) => GetVirtualGatewaySpecListenerConnectionPoolGrpc.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      http2s: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetVirtualGatewaySpecListenerConnectionPoolHttp2>(
          map['http2s']!,
          (value) => GetVirtualGatewaySpecListenerConnectionPoolHttp2.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      https: pulumi.Input.fromValue(
        pulumi
            .Input.decodeList<GetVirtualGatewaySpecListenerConnectionPoolHttp>(
          map['https']!,
          (value) => GetVirtualGatewaySpecListenerConnectionPoolHttp.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
