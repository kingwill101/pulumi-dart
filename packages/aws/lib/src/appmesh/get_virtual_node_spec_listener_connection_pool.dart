// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_connection_pool_grpc.dart';
import 'get_virtual_node_spec_listener_connection_pool_http.dart';
import 'get_virtual_node_spec_listener_connection_pool_http2.dart';
import 'get_virtual_node_spec_listener_connection_pool_tcp.dart';

class GetVirtualNodeSpecListenerConnectionPool {
  final List<GetVirtualNodeSpecListenerConnectionPoolGrpc> grpcs;
  final List<GetVirtualNodeSpecListenerConnectionPoolHttp2> http2s;
  final List<GetVirtualNodeSpecListenerConnectionPoolHttp> https;
  final List<GetVirtualNodeSpecListenerConnectionPoolTcp> tcps;

  /// Creates a new [GetVirtualNodeSpecListenerConnectionPool].
  /// [grpcs] Required.
  /// [http2s] Required.
  /// [https] Required.
  /// [tcps] Required.
  GetVirtualNodeSpecListenerConnectionPool({
    required this.grpcs,
    required this.http2s,
    required this.https,
    required this.tcps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcs':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerConnectionPoolGrpc,
            Map<String, dynamic>
          >(grpcs, (value) => value.toMap()),
      'http2s':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerConnectionPoolHttp2,
            Map<String, dynamic>
          >(http2s, (value) => value.toMap()),
      'https':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerConnectionPoolHttp,
            Map<String, dynamic>
          >(https, (value) => value.toMap()),
      'tcps':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecListenerConnectionPoolTcp,
            Map<String, dynamic>
          >(tcps, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecListenerConnectionPool.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerConnectionPool(
      grpcs:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolGrpc>(
            map['grpcs'],
            (value) => GetVirtualNodeSpecListenerConnectionPoolGrpc.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      http2s:
          pulumi
              .Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolHttp2>(
            map['http2s'],
            (value) => GetVirtualNodeSpecListenerConnectionPoolHttp2.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      https:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolHttp>(
            map['https'],
            (value) => GetVirtualNodeSpecListenerConnectionPoolHttp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      tcps:
          pulumi.Input.decodeList<GetVirtualNodeSpecListenerConnectionPoolTcp>(
            map['tcps'],
            (value) => GetVirtualNodeSpecListenerConnectionPoolTcp.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
