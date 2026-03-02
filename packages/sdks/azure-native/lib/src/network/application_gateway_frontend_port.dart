// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Frontend port of an application gateway.
class ApplicationGatewayFrontendPort {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the frontend port that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Frontend port.
  final pulumi.Input<int>? port;

  /// Creates a new [ApplicationGatewayFrontendPort].
  /// [id] Resource ID.
  /// [name] Name of the frontend port that is unique within an Application Gateway.
  /// [port] Frontend port.
  ApplicationGatewayFrontendPort({
    this.id,
    this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'port': ?port,
    };
  }

  factory ApplicationGatewayFrontendPort.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendPort(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
    );
  }
}

