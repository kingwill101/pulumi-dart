// ignore_for_file: unused_element, unnecessary_cast


/// Networking route configuration.
class NetworkingRoute {
  /// Route path.
  final String? path;
  /// The port that will be configured externally. If not specified, it will use the port from the receiver definition.
  final int? port;
  /// The name of the previously defined receiver.
  final String receiver;
  /// Route subdomain.
  final String? subdomain;

  /// Creates a new [NetworkingRoute].
  /// [path] Route path.
  /// [port] The port that will be configured externally. If not specified, it will use the port from the receiver definition.
  /// [receiver] The name of the previously defined receiver.
  /// [subdomain] Route subdomain.
  NetworkingRoute({
    this.path,
    this.port,
    required this.receiver,
    this.subdomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'port': ?port,
      'receiver': receiver,
      'subdomain': ?subdomain,
    };
  }

  factory NetworkingRoute.fromMap(Map<String, dynamic> map) {
    return NetworkingRoute(
      path: map['path'] == null ? null : map['path'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      receiver: map['receiver'] as String,
      subdomain: map['subdomain'] == null ? null : map['subdomain'] as String,
    );
  }
}

