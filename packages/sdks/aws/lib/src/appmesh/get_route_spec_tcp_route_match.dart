// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteSpecTcpRouteMatch {
  final pulumi.Input<int> port;

  /// Creates a new [GetRouteSpecTcpRouteMatch].
  /// [port] Required.
  const GetRouteSpecTcpRouteMatch({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
    };
  }

  factory GetRouteSpecTcpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteMatch(
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
