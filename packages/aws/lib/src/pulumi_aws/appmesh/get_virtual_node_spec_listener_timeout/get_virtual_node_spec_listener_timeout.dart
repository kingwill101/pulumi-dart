// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_listener_timeout_grpc/get_virtual_node_spec_listener_timeout_grpc.dart';
import '../get_virtual_node_spec_listener_timeout_http/get_virtual_node_spec_listener_timeout_http.dart';
import '../get_virtual_node_spec_listener_timeout_http2/get_virtual_node_spec_listener_timeout_http2.dart';
import '../get_virtual_node_spec_listener_timeout_tcp/get_virtual_node_spec_listener_timeout_tcp.dart';

class GetVirtualNodeSpecListenerTimeout {
  final List<GetVirtualNodeSpecListenerTimeoutGrpc> grpcs;
  final List<GetVirtualNodeSpecListenerTimeoutHttp2> http2s;
  final List<GetVirtualNodeSpecListenerTimeoutHttp> https;
  final List<GetVirtualNodeSpecListenerTimeoutTcp> tcps;

  GetVirtualNodeSpecListenerTimeout({
    required this.grpcs,
    required this.http2s,
    required this.https,
    required this.tcps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['grpcs'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutGrpc,
        Map<String, dynamic>>(grpcs, (value) => value.toMap());
    map['http2s'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutHttp2,
        Map<String, dynamic>>(http2s, (value) => value.toMap());
    map['https'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutHttp,
        Map<String, dynamic>>(https, (value) => value.toMap());
    map['tcps'] = pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutTcp,
        Map<String, dynamic>>(tcps, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeout.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeout(
      grpcs: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutGrpc>(
          map['grpcs'],
          (value) => GetVirtualNodeSpecListenerTimeoutGrpc.fromMap(
              (value as Map).cast<String, dynamic>())),
      http2s: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttp2>(
          map['http2s'],
          (value) => GetVirtualNodeSpecListenerTimeoutHttp2.fromMap(
              (value as Map).cast<String, dynamic>())),
      https: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttp>(
          map['https'],
          (value) => GetVirtualNodeSpecListenerTimeoutHttp.fromMap(
              (value as Map).cast<String, dynamic>())),
      tcps: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutTcp>(
          map['tcps'],
          (value) => GetVirtualNodeSpecListenerTimeoutTcp.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
