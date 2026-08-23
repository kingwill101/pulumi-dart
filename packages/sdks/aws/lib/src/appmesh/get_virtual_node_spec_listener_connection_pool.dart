// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_connection_pool_grpc.dart';
import 'get_virtual_node_spec_listener_connection_pool_http.dart';
import 'get_virtual_node_spec_listener_connection_pool_http2.dart';
import 'get_virtual_node_spec_listener_connection_pool_tcp.dart';

class GetVirtualNodeSpecListenerConnectionPool {
  /// Timeouts for gRPC listeners. See `spec.listener.timeout.grpc` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerConnectionPoolGrpc>> grpcs;
  /// Timeouts for HTTP2 listeners. See `spec.listener.timeout.http2` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerConnectionPoolHttp2>> http2s;
  /// Timeouts for HTTP listeners. See `spec.listener.timeout.http` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerConnectionPoolHttp>> https;
  /// Timeouts for TCP listeners. See `spec.listener.timeout.tcp` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecListenerConnectionPoolTcp>> tcps;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPool].
  /// [grpcs] Timeouts for gRPC listeners. See `spec.listener.timeout.grpc` Block for details.
  /// [http2s] Timeouts for HTTP2 listeners. See `spec.listener.timeout.http2` Block for details.
  /// [https] Timeouts for HTTP listeners. See `spec.listener.timeout.http` Block for details.
  /// [tcps] Timeouts for TCP listeners. See `spec.listener.timeout.tcp` Block for details.
  const GetVirtualNodeSpecListenerConnectionPool({
    required this.grpcs,
    required this.http2s,
    required this.https,
    required this.tcps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcs': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerConnectionPoolGrpc>, List<Map<String, dynamic>>>(grpcs, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerConnectionPoolGrpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'http2s': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerConnectionPoolHttp2>, List<Map<String, dynamic>>>(http2s, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerConnectionPoolHttp2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'https': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerConnectionPoolHttp>, List<Map<String, dynamic>>>(https, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerConnectionPoolHttp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcps': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerConnectionPoolTcp>, List<Map<String, dynamic>>>(tcps, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerConnectionPoolTcp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPool.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPool(
      grpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolGrpc>(map['grpcs']!, (value) => GetVirtualNodeSpecListenerConnectionPoolGrpc.fromMap((value as Map).cast<String, dynamic>()))),
      http2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolHttp2>(map['http2s']!, (value) => GetVirtualNodeSpecListenerConnectionPoolHttp2.fromMap((value as Map).cast<String, dynamic>()))),
      https: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolHttp>(map['https']!, (value) => GetVirtualNodeSpecListenerConnectionPoolHttp.fromMap((value as Map).cast<String, dynamic>()))),
      tcps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolTcp>(map['tcps']!, (value) => GetVirtualNodeSpecListenerConnectionPoolTcp.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
