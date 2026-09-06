// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Framework specific data for a web application.
class WebApplicationFrameworkResponse {
  /// Gets the ID.
  final pulumi.Input<String> id;
  /// Gets or sets Name of the framework.
  final pulumi.Input<String?>? name;
  /// Gets or sets Version of the framework.
  final pulumi.Input<String?>? version;

  /// Creates a new [WebApplicationFrameworkResponse].
  /// [id] Gets the ID.
  /// [name] Gets or sets Name of the framework.
  /// [version] Gets or sets Version of the framework.
  const WebApplicationFrameworkResponse({
    required this.id,
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': ?name,
      'version': ?version,
    };
  }

  factory WebApplicationFrameworkResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationFrameworkResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
