// ignore_for_file: unused_element, unnecessary_cast


class GetRouteSpecTcpRouteMatch {
  final int port;

  /// Creates a new [GetRouteSpecTcpRouteMatch].
  /// [port] Required.
  GetRouteSpecTcpRouteMatch({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
    };
  }

  factory GetRouteSpecTcpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteMatch(
      port: map['port'] as int,
    );
  }
}

