// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The port exposed on the container group.
class PortResponse {
  /// The port number.
  final pulumi.Input<int> port;
  /// The protocol associated with the port.
  final pulumi.Input<String?>? protocol;

  /// Creates a new [PortResponse].
  /// [port] The port number.
  /// [protocol] The protocol associated with the port.
  const PortResponse({
    required this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': port,
      'protocol': ?protocol,
    };
  }

  factory PortResponse.fromMap(Map<String, dynamic> map) {
    return PortResponse(
      port: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['port'])),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
