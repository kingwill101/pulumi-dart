// ignore_for_file: unused_element, unnecessary_cast

class GetRouteSpecTcpRouteMatch {
  final int port;

  GetRouteSpecTcpRouteMatch({
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['port'] = port;
    return map;
  }

  factory GetRouteSpecTcpRouteMatch.fromMap(Map<String, dynamic> map) {
    return GetRouteSpecTcpRouteMatch(
      port: map['port'] as int,
    );
  }
}
