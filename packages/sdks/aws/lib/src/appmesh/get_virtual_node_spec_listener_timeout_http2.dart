// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_timeout_http2_idle.dart';
import 'get_virtual_node_spec_listener_timeout_http2_per_request.dart';

class GetVirtualNodeSpecListenerTimeoutHttp2 {
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutHttp2Idle>> idles;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutHttp2PerRequest>> perRequests;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttp2].
  /// [idles] Required.
  /// [perRequests] Required.
  GetVirtualNodeSpecListenerTimeoutHttp2({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutHttp2Idle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutHttp2Idle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'perRequests': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutHttp2PerRequest>, List<Map<String, dynamic>>>(perRequests, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutHttp2PerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutHttp2.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttp2(
      idles: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttp2Idle>(map['idles'], (value) => GetVirtualNodeSpecListenerTimeoutHttp2Idle.fromMap((value as Map).cast<String, dynamic>()))).input(),
      perRequests: (pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttp2PerRequest>(map['perRequests'], (value) => GetVirtualNodeSpecListenerTimeoutHttp2PerRequest.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

