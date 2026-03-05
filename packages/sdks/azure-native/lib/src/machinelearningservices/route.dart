// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Route {
  /// [Required] The path for the route.
  final pulumi.Input<String> path;
  /// [Required] The port for the route.
  final pulumi.Input<int> port;

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
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}

