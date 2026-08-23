// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouteResponse {
  /// [Required] The path for the route.
  final pulumi.Input<String> path;
  /// [Required] The port for the route.
  final pulumi.Input<int> port;

  /// Creates a new [RouteResponse].
  /// [path] [Required] The path for the route.
  /// [port] [Required] The port for the route.
  const RouteResponse({
    required this.path,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'port': port,
    };
  }

  factory RouteResponse.fromMap(Map<String, dynamic> map) {
    return RouteResponse(
      path: pulumi.Input.fromValue(map['path'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
    );
  }
}
