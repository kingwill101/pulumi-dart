// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_spec_tcp_route_timeout_idle.dart';

class GetRouteSpecTcpRouteTimeout {
  final pulumi.Input<List<GetRouteSpecTcpRouteTimeoutIdle>> idles;

  /// Creates a new [GetRouteSpecTcpRouteTimeout].
  /// [idles] Required.
  GetRouteSpecTcpRouteTimeout({
    required this.idles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idles': pulumi.Input.mapInputValue<List<GetRouteSpecTcpRouteTimeoutIdle>, List<Map<String, dynamic>>>(idles, (value) => pulumi.Input.encodeList<GetRouteSpecTcpRouteTimeoutIdle, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRouteSpecTcpRouteTimeout.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteTimeout(
      idles: (pulumi.Input.decodeList<GetRouteSpecTcpRouteTimeoutIdle>(map['idles']!, (value) => GetRouteSpecTcpRouteTimeoutIdle.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

