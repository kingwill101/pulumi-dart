// ignore_for_file: unused_element, unnecessary_cast

class AppConnectionApplicationEndpoint {
  /// Hostname or IP address of the remote application endpoint.
  final String host;

  /// Port of the remote application endpoint.
  final int port;

  AppConnectionApplicationEndpoint({
    required this.host,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['host'] = host;
    map['port'] = port;
    return map;
  }

  factory AppConnectionApplicationEndpoint.fromMap(Map<String, dynamic> map) {
    return AppConnectionApplicationEndpoint(
      host: map['host'] as String,
      port: map['port'] as int,
    );
  }
}
