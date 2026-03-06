// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_timeout_tcp_idle.dart';

class GetVirtualNodeSpecListenerTimeoutTcp {
  final pulumi.Input<List<GetVirtualNodeSpecListenerTimeoutTcpIdle>> idles;

  /// Creates a new [GetVirtualNodeSpecListenerTimeoutTcp].
  /// [idles] Required.
  const GetVirtualNodeSpecListenerTimeoutTcp({
    required this.idles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTimeoutTcpIdle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTimeoutTcpIdle, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTimeoutTcp.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutTcp(
      idles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutTcpIdle>(map['idles']!, (value) => GetVirtualNodeSpecListenerTimeoutTcpIdle.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

