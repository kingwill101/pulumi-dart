// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_route_spec_tcp_route_timeout_idle/get_route_spec_tcp_route_timeout_idle.dart';

class GetRouteSpecTcpRouteTimeout {
  final List<GetRouteSpecTcpRouteTimeoutIdle> idles;

  GetRouteSpecTcpRouteTimeout({
    required this.idles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['idles'] = pulumi.Input.encodeList<GetRouteSpecTcpRouteTimeoutIdle,
        Map<String, dynamic>>(idles, (value) => value.toMap());
    return map;
  }

  factory GetRouteSpecTcpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteTimeout(
      idles: pulumi.Input.decodeList<GetRouteSpecTcpRouteTimeoutIdle>(
          map['idles'],
          (value) => GetRouteSpecTcpRouteTimeoutIdle.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
