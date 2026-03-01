// ignore_for_file: unused_element, unnecessary_cast


class Route {
  /// [Required] The path for the route.
  final String path;
  /// [Required] The port for the route.
  final int port;

  /// Creates a new [Route].
  /// [path] [Required] The path for the route.
  /// [port] [Required] The port for the route.
  Route({
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'port': port,
    };
  }

  factory Route.fromMap(Map<String, dynamic> map) {
    return Route(
      path: map['path'] as String,
      port: map['port'] as int,
    );
  }
}

