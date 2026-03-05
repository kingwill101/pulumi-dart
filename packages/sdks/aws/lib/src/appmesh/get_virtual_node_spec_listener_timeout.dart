// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_timeout_grpc.dart';
import 'get_virtual_node_spec_listener_timeout_http.dart';
import 'get_virtual_node_spec_listener_timeout_http2.dart';
import 'get_virtual_node_spec_listener_timeout_tcp.dart';

class GetVirtualNodeSpecListenerTimeout {
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutGrpc>> grpcs;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutHttp2>> http2s;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutHttp>> https;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutTcp>> tcps;

  /// Creates a new [GetVirtualNodeSpecListenerTimeout].
  /// [grpcs] Required.
  /// [http2s] Required.
  /// [https] Required.
  /// [tcps] Required.
  GetVirtualNodeSpecListenerTimeout({
    required this.grpcs,
    required this.http2s,
    required this.https,
    required this.tcps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grpcs': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutGrpc>, List<Map<String, dynamic>>>(grpcs, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutGrpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'http2s': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutHttp2>, List<Map<String, dynamic>>>(http2s, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutHttp2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'https': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutHttp>, List<Map<String, dynamic>>>(https, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutHttp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tcps': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutTcp>, List<Map<String, dynamic>>>(tcps, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutTcp, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTimeout.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeout(
      grpcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutGrpc>(map['grpcs']!, (value) => GetVirtualNodeSpecListenerTimeoutGrpc.fromMap((value as Map).cast<String, dynamic>()))),
      http2s: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttp2>(map['http2s']!, (value) => GetVirtualNodeSpecListenerTimeoutHttp2.fromMap((value as Map).cast<String, dynamic>()))),
      https: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttp>(map['https']!, (value) => GetVirtualNodeSpecListenerTimeoutHttp.fromMap((value as Map).cast<String, dynamic>()))),
      tcps: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutTcp>(map['tcps']!, (value) => GetVirtualNodeSpecListenerTimeoutTcp.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

