// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_timeout_http_idle.dart';
import 'get_virtual_node_spec_listener_timeout_http_per_request.dart';

class GetVirtualNodeSpecListenerTimeoutHttp {
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutHttpIdle>> idles;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutHttpPerRequest>> perRequests;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutHttp].
  /// [idles] Required.
  /// [perRequests] Required.
  GetVirtualNodeSpecListenerTimeoutHttp({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutHttpIdle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutHttpIdle, Map<String, dynamic>>(value, (value) => value.toMap())),
      'perRequests': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutHttpPerRequest>, List<Map<String, dynamic>>>(perRequests, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutHttpPerRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutHttp.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttp(
      idles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttpIdle>(map['idles']!, (value) => GetVirtualNodeSpecListenerTimeoutHttpIdle.fromMap((value as Map).cast<String, dynamic>()))),
      perRequests: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttpPerRequest>(map['perRequests']!, (value) => GetVirtualNodeSpecListenerTimeoutHttpPerRequest.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

