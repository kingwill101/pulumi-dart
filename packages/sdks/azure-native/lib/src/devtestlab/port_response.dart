// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a network port.
class PortResponse {
  /// Backend port of the target virtual machine.
  final pulumi.Input<int>? backendPort;

  /// Protocol type of the port.
  final pulumi.Input<String>? transportProtocol;

  /// Creates a new [PortResponse].
  /// [backendPort] Backend port of the target virtual machine.
  /// [transportProtocol] Protocol type of the port.
  PortResponse({this.backendPort, this.transportProtocol});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'transportProtocol': ?transportProtocol,
    };
  }

  factory PortResponse.fromMap(Map<String, dynamic> map) {
    return PortResponse(
      backendPort: (() {
        final guardedValue = map['backendPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      transportProtocol: (() {
        final guardedValue = map['transportProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
