// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_listener_timeout_tcp_idle/get_virtual_node_spec_listener_timeout_tcp_idle.dart';

class GetVirtualNodeSpecListenerTimeoutTcp {
  final List<GetVirtualNodeSpecListenerTimeoutTcpIdle> idles;

  GetVirtualNodeSpecListenerTimeoutTcp({
    required this.idles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idles'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecListenerTimeoutTcpIdle,
        Map<String, dynamic>>(idles, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTimeoutTcp.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTimeoutTcp(
      idles: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTimeoutTcpIdle>(
          map['idles'],
          (value) => GetVirtualNodeSpecListenerTimeoutTcpIdle.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
