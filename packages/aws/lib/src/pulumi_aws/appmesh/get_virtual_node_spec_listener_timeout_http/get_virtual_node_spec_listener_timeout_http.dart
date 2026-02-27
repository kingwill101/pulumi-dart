// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_listener_timeout_http_idle/get_virtual_node_spec_listener_timeout_http_idle.dart';
import '../get_virtual_node_spec_listener_timeout_http_per_request/get_virtual_node_spec_listener_timeout_http_per_request.dart';

class GetVirtualNodeSpecListenerTimeoutHttp {
  final List<GetVirtualNodeSpecListenerTimeoutHttpIdle> idles;
  final List<GetVirtualNodeSpecListenerTimeoutHttpPerRequest> perRequests;

  GetVirtualNodeSpecListenerTimeoutHttp({
    required this.idles,
    required this.perRequests,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idles'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutHttpIdle,
        Map<String, dynamic>>(idles, (value) => value.toMap());
    map['perRequests'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutHttpPerRequest,
        Map<String, dynamic>>(perRequests, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutHttp.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutHttp(
      idles: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutHttpIdle>(
          map['idles'],
          (value) => GetVirtualNodeSpecListenerTimeoutHttpIdle.fromMap(
              (value as Map).cast<String, dynamic>())),
      perRequests: pulumi.Input.decodeList<
              GetVirtualNodeSpecListenerTimeoutHttpPerRequest>(
          map['perRequests'],
          (value) => GetVirtualNodeSpecListenerTimeoutHttpPerRequest.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
