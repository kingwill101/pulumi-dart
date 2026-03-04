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
  ApplicationGatewayFrontendPort({this.id, this.name, this.port});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'name': ?name, 'port': ?port};
  }

  factory ApplicationGatewayFrontendPort.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayFrontendPort(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
