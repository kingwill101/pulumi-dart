// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_listener_connection_pool_grpc/get_virtual_node_spec_listener_connection_pool_grpc.dart';
import '../get_virtual_node_spec_listener_connection_pool_http/get_virtual_node_spec_listener_connection_pool_http.dart';
import '../get_virtual_node_spec_listener_connection_pool_http2/get_virtual_node_spec_listener_connection_pool_http2.dart';
import '../get_virtual_node_spec_listener_connection_pool_tcp/get_virtual_node_spec_listener_connection_pool_tcp.dart';

class GetVirtualNodeSpecListenerConnectionPool {
  final List<GetVirtualNodeSpecListenerConnectionPoolGrpc> grpcs;
  final List<GetVirtualNodeSpecListenerConnectionPoolHttp2> http2s;
  final List<GetVirtualNodeSpecListenerConnectionPoolHttp> https;
  final List<GetVirtualNodeSpecListenerConnectionPoolTcp> tcps;

  GetVirtualNodeSpecListenerConnectionPool({
    required this.grpcs,
    required this.http2s,
    required this.https,
    required this.tcps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grpcs'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerConnectionPoolGrpc,
        Map<String, dynamic>>(grpcs, (value) => value.toMap());
    map['http2s'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerConnectionPoolHttp2,
        Map<String, dynamic>>(http2s, (value) => value.toMap());
    map['https'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerConnectionPoolHttp,
        Map<String, dynamic>>(https, (value) => value.toMap());
    map['tcps'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerConnectionPoolTcp,
        Map<String, dynamic>>(tcps, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerConnectionPool.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerConnectionPool(
      grpcs:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolGrpc>(
              map['grpcs'],
              (value) => GetVirtualNodeSpecListenerConnectionPoolGrpc.fromMap(
                  (value as Map).cast<String, dynamic>())),
      http2s: pulumi.Input.decodeList<
              GetVirtualNodeSpecListenerConnectionPoolHttp2>(
          map['http2s'],
          (value) => GetVirtualNodeSpecListenerConnectionPoolHttp2.fromMap(
              (value as Map).cast<String, dynamic>())),
      https:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolHttp>(
              map['https'],
              (value) => GetVirtualNodeSpecListenerConnectionPoolHttp.fromMap(
                  (value as Map).cast<String, dynamic>())),
      tcps:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolTcp>(
              map['tcps'],
              (value) => GetVirtualNodeSpecListenerConnectionPoolTcp.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
